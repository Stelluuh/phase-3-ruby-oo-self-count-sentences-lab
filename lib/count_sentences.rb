require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    # self.split(/(\?|\.|\!+\s)/).count
    self.split(/\.|\?|\!/).filter { |sentence| !sentence.empty? }.count
      #the .empty? checks if the string length is zero or not. 

  end
end

binding.pry