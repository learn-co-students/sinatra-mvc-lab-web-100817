class PigLatinizer

  attr_accessor :text
  # def initialize(text)
  #   @text = text.downcase
  # end

  def piglatinize(parolas)

    ayy = parolas.split(/([aeiou].*)/)

    parolas.start_with?('a','e','i','o','u','A', 'E', 'I', 'O', 'U') ? wut = (ayy <<"way").join : wut = ayy.reverse.join << "ay"
    wut
  end

  def to_pig_latin(paroli)
    arroyo = paroli.split
    arroyo.map {|w| piglatinize(w)}.join(' ')
  end

end
