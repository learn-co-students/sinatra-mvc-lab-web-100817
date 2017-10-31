class PigLatinizer
  attr_reader :text

  def piglatinize(word)
    if word =~ /^[aeiouAEIOU]/
      "#{word}way"
    else
      split = word.split(/([aeiou])(.*)/)
      "#{split[1]}#{split[2]}#{split[0]}ay"
    end
  end

  def to_pig_latin(sentence)
    sentence.split(" ").map { |word| piglatinize(word)}.join(" ")
  end
end
