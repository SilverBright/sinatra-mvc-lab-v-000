class PigLatinizer

  def piglatinize(str)
      # Vowels to consider
      vowels = ["a", "e", "i", "o", "u"]

      # Special cases to consider
      two_letter_consonants = ["ch", "sh", "qu", "th", "br"]
      three_letter_consonants = ["thr", "sch", "squ"]

      # Seperate each word from the phrase given
      words = str.split(" ")

      #Location for processed words
      result = [];



      words.each do |word|
          # Words that start with a vowels
          if vowels.include? word[0]
              result.push word << 'ay'

          # Words that start with a consonant
          else
              # Check for special consonants
              if three_letter_consonants.include? word[0] + word[1] + word[2]
                  # Slice off first three letters
                  first_three_letters = word.slice!(0,3)

                  # Add letters to end of word with 'ay'
                  result.push word << first_three_letters << 'ay'

              elsif  two_letter_consonants.include? word[0] + word[1]
                  # Slice off first two letters
                  first_two_letters = word.slice!(0,2)

                  # Add the letters to end of word with 'ay'
                  result.push word << first_two_letters << 'ay'

              else
                  # Slice off first letter...
                  first_letter = word.slice!(0)

                  # Add first letter to end of word with 'ay'
                  result.push word << first_letter << 'ay'
              end #End of special consonant check

          end #End of vowel check



      end #End of words.each



      #Present the processed words as a single string
      return result.join(" ")

  end #End of translate function



  # def translate_words(multi_words)
  #     word_count = multi_words.split.size
  #     if word_count > 1
  #         multi_words.map! do |word|
  #             translate(word)
  #         end
  #     end
  # end


# def piglatinize(sent)
#       words = sent.split(' ')
#       vowels = ['a', 'e', 'i', 'o', 'u']
#
#       result = []
#
#   words.each_with_index do |word, i|
#       translation = ''
#       qu = false
#       if vowels.include? word[0]
#           translation = word + 'ay'
#           result.push(translation)
#       else
#           word = word.split('')
#           count = 0
#           word.each_with_index do |char, index|
#               if vowels.include? char
#                   # handle words that start with 'qu'
#                   if char == 'u' and translation[-1] == 'q'
#                       qu = true
#                       translation = words[i][count + 1..words[i].length] + translation + 'uay'
#                       result.push(translation)
#                       next
#                   end
#                   break
#               else
#                   # handle words with 'qu' in middle
#                   if char == 'q' and word[i+1] == 'u'
#                       qu = true
#                       translation = words[i][count + 2..words[i].length] + 'quay'
#                       result.push(translation)
#                       next
#                   else
#                       translation += char
#                   end
#                   count += 1
#               end
#           end
#           # translation of consonant words without qu
#           if not qu
#               translation = words[i][count..words[i].length] + translation + 'ay'
#               result.push(translation)
#           end
#       end
#
#   end
#   result.join(' ')
#   end


  def to_pig_latin(words)
    result = words.split(" ").map do |word|
      piglatinize(word)
    end
    result.join(" ")
  end


end
