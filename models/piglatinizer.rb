class PigLatinizer

attr_accessor :user_phrase

def initialize

end

def piglatinize(word)
  vowels = ["a","e","i","o","u","A","E","I","O","U"]
    if vowels.include?(word[0])
      word = word + 'way'
    elsif vowels.include?(word[0]) == false && vowels.include?(word[1]) == false && vowels.include?(word[2]) == false
      word = word[3..word.length] + word[0..2] + 'ay'
    elsif vowels.include?(word[0]) == false && vowels.include?(word[1]) == false
      word = word[2..word.length] + word[0..1] + 'ay'
    else
      word = word[1..word.length] + word[0] + 'ay'
    end

end

def to_pig_latin(sentence)
  sentence.split.map {|word| piglatinize(word)}.join" "
end

end
