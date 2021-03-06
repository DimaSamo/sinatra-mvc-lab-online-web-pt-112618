require 'pry'
class PigLatinizer
  attr_accessor :text
  def initialize
  end

  def piglatinize(text)
    words_array=text.split(" ")
    words_array.map do |word|
      letters_array=word.split("")
      original_array = word.split("")
      while /^[^aeiou\W]/i.match(letters_array.first) != nil
         letters_array.push(letters_array.delete_at(0))
      end
      letters_array.push("w") if /^[^aeiou\W]/i.match(original_array.first) == nil
      letters_array.push("a")
      letters_array.push("y")
      letters_array.join("")
    end.join(" ")
  end
end
