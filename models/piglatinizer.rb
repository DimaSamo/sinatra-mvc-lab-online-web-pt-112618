class PigLatinizer
  attr_accessor :text
  def initialize
  end

  def piglatinize(text)
    words_array=text.split(" ")
    words_array.map do |word|
      letters_array=word.split("")
      letters_array.push(letters_array.delete_at(0))
      letters_array.push("w") if letters_array.last.downcase=="i"
      letters_array.push("a")
      letters_array.push("y")
      letters_array.join("")
    end.join(" ")
  end
end
