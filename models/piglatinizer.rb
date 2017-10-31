class PigLatinizer
  attr_reader :string

  def initialize

  end

  def piglatinize(string)

    vowels = ["a","e","i","o","u"]
    string_arr = string.split("")
    counter = []
    string_arr.each_with_index { |letter, index| vowels.include?(letter.downcase) ? counter << index : nil }
    if counter.min == 0
      x = string_arr.push("w").join("")
    else
      shift = string_arr.shift(counter.min)
      x = string_arr.push(shift).flatten.join("")
    end
    x += "ay"
  end

  def to_pig_latin(string)
    x = string.split(" ")
    x.map { |word| piglatinize(word)}.join(" ")
  end

end
