
class PigLatinizer

  attr_reader :text

  def initialize(text ="")
    @text = text
  end

  def piglatinize(word)
    new_word =  word.split(/([aeiouAEIOU].*)/)
    new_word.delete("")
    if new_word.first.downcase =~ /[aeiou]/ || new_word.first == ""
      "#{word}" + "way"
    else
      "#{new_word[1]}" + "#{new_word[0]}" + "ay"
    end
  end

    def to_pig_latin(text)
      new_text = text.split(/\W/)
      new_text.delete("")
      new_text.map{|x|piglatinize(x)}.join(" ")
  end

end
