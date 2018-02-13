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
    word_list.each do |match|
      compare = match.split("")
      sorted_match = compare.sort
      if sorted == sorted_match
        matches << match
      end
    end
    matches
  end
end
