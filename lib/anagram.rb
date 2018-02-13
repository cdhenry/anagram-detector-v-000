require 'pry'

class Anagram
  attr_accessor :word, :anagrams

  def initialize(word)
    @word = word
  end

  def match(word_list)
    matches = []
    array = @word.split
    array.sort!
    binding.pry
    word_list.each do |match|
      compare = match.split
      compare.sort!
      binding.pry
      if array == compare
        matches = match
      end
    end
    matches
    binding.pry
  end
end
