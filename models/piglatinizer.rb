require 'pry'
class PigLatinizer
  def to_pig_latin(phrase)
    piglatinize(phrase)
  end
  def piglatinize(phrase)
    @words = phrase.split(" ")
    @output = []
    @words.each do |word|
      @output << check_first_letter(word)
    end
    @output.join(" ")
  end

  def check_first_letter(word)
    vowels = ["a", "e", "i", "o", "u"]
    if word.downcase[0] == "a" || word.downcase[0]=="o" || word.downcase[0]=="i"
      letters = word.split("")
      first = letters.shift
      letters << first + "way"
      return letters.join
    elsif word.downcase[0] == "u" || word.downcase[0] == "e"
      return word + "way"
    elsif vowels.include?(word.downcase[1])
      letters = word.split("")
      first = letters.shift(1)
      letters.concat first
      letters << "ay"
      return letters.join
    elsif vowels.include?(word.downcase[2])
      letters = word.split("")
      first = letters.shift(2)
      letters.concat first
      letters << "ay"
      return letters.join
    elsif vowels.include?(word.downcase[3])
      letters = word.split("")
      first = letters.shift(3)
      letters.concat first
      letters << "ay"
      return letters.join
    else 
      letters = word.split("")
      first = letters.shift
      letters << first + "ay"
      return letters.join
    end
    
  end
end
