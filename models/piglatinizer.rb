class PigLatinizer

  def translate(word)
    words=word.split(" ")
    words.each do |x|
      if ["a","e","i","o","u"].include?x[0,1]
        x << ("ay")
      else
        until ["a","e","i","o","u"].include?x[0,1]
          x << ("#{x[0,1]}")
          x[0,1]=""
        end
        x << ("#{x[0,1]}ay")
      end
    end
    words.join(" ")
  end

  def to_pig_latin(words)
    result = words.split(" ").map do |word|
      piglatinize(word)
    end
    result.join(" ")
  end


end
