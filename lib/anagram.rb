require 'pry'

class Anagram
  attr_accessor :word, :anagrams

  def initialize(word)
    @word = word
  end

  def match(word_list)
    matches = []
    array = @word.split("")
    sorted = array.sort
    binding.pry
    word_list.each do |match|
      compare = match.split("")
      sorted_match = compare.sort
      if sorted == compare
        matches = match
      end
    end
    matches
  end
end
