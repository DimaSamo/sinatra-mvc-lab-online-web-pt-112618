class PigLatinizer
  attr_accessor :text
  def initialize(text)
    @text=text
  end

  def translate
    words_array=@text.split(" ")
  end
end
