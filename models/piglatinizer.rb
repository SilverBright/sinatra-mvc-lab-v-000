class PigLatinizer

  def piglatinize(x)

      if x.index(/[aeiou]/) == 0
        x = x + "way"
      elsif x[0..1] == "qu"
        first = x.chr
        x.reverse!.chop!.reverse!
        second = x.chr
        x.reverse!.chop!.reverse!
        x = x + first + second + "ay"
      elsif x.index(/[aeiou]/) == 1
        first = x.chr
        x.reverse!.chop!.reverse!
        x = x + first + "ay"
      elsif x[1..2] == "qu"
        first = x.chr
        x.reverse!.chop!.reverse!
        second = x.chr
        x.reverse!.chop!.reverse!
        third = x.chr
        x.reverse!.chop!.reverse!
        x = x + first + second + third +"ay"
      elsif x.index(/[aeiou]/) == 2
        first = x.chr.chr
        x.reverse!.chop!.reverse!
        second = x.chr
        x.reverse!.chop!.reverse!
        x = x + first + second + "ay"
      elsif x.index(/[aeiou]/) == 3
        first = x.chr
        x.reverse!.chop!.reverse!
        second = x.chr
        x.reverse!.chop!.reverse!
        third = x.chr
        x.reverse!.chop!.reverse!
        x = x + first + second + third +"ay"
      else
        x
      end
    end


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
