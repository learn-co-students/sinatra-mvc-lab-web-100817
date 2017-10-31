class PigLatinizer
  attr_reader :words


  def piglatinize(word)
    if word[0].match(/a|e|i|o|u|A|E|I|O|U/)
      word = word + "way"
    elsif !word[0].match(/a|e|i|o|u|A|E|I|O|U/) && !word[1].match(/a|e|i|o|u|A|E|I|O|U/) && !word[2].match(/a|e|i|o|u|A|E|I|O|U/)
      word2 = word
      word = word2[3..-1] + word2[0..2] + "ay"
    elsif !word[0].match(/a|e|i|o|u|A|E|I|O|U/) && !word[1].match(/a|e|i|o|u|A|E|I|O|U/)
      word2 = word
      word = word2[2..-1] + word2[0..1] + "ay"
    else
      word2 = word
      word = word2[1..-1] + word2[0] + "ay"
      word
    end
  end

  def to_pig_latin(words)
    words = words.split(" ")

      array = words.map do |word|
        piglatinize(word)
      end

      array.join(" ")

  end

end
