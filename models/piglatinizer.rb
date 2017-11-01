require 'pry'
class PigLatinizer

    def piglatinize(input)
      word = input.downcase
    vowels = ["a","e","i","o","u"]
    consonants = ["b","c","d","f",
              "g","h","j","k",
              "l","m","n","p",
              "q","r","s","t",
              "v","w","x","y","z"]
    first_letter = word[0]
    second_letter = word[1]
    third_letter = word[2]

    if vowels.include?(first_letter)
    newword = input + "way"
    end


  if consonants.include?(first_letter) && consonants.include?(second_letter) && consonants.include?(third_letter)
    newword = input.slice(3, input.length) + input.slice(0,3) + "ay"

    elsif consonants.include?(first_letter) && consonants.include?(second_letter)
    newword = input.slice(2, input.length) + input.slice(0,2) + "ay"

    elsif consonants.include?(first_letter)
    newword = input.slice(1, input.length) + input.slice(0,1) + "ay"
  end
    newword
end

def to_pig_latin(sentence)
  sentence.split(" ").collect{|word| piglatinize(word)}.join(" ")
end


end
