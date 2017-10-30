class PigLatinizer

  def piglatinize(word)
    arr = word.split("")
    if arr[0..2].join().match(/((spr)|(str))/i)
      first = arr.shift(3).join()
    elsif arr[0..1].join().match(/((ch)|(sh)|(sm)|(st)|(th)|(st)|(pl)|(pr))|(wh)|(sk)/i) 
      first = arr.shift(2).join() 
    else
      first = arr.shift()
    end
    if first.match(/[aeiou]/i)
      arr.unshift(first)
      arr << "way"
      arr.join
    else
      arr << first + "ay"
      arr.join
    end
  end

  def to_pig_latin(sentence)
    sentence.split(" ").collect {|word| piglatinize(word)}.join(" ")
  end

end