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
    word_list.each do |match|
      compare = match.split
      compare.sort!
      if array == compare
        matches = match
      end
    end
    matches
    binding.pry
  end
end
