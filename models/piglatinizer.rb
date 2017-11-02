class PigLatinizer
  require 'pry'
  attr_accessor :words


  def piglatinize(word)
      if word.start_with?("a","e","i","o","u","A","E","I","O","U")
        "#{word}way"
      else
        split = word.split(/([aeiou])(.*)/)
        "#{split[1]}#{split[2]}#{split[0]}ay"
      end
  end

  def to_pig_latin(phrase)
    phrase.split(" ").map{|word|piglatinize(word)}.join(" ")
  end
  # binding.pry

end
