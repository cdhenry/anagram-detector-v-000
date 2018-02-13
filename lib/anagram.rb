# Your code goes here!
class Anagram
  attr_accessor :word, :anagrams

  def initialize(word)
    @word = word
  end

  def match(word_list)
    array = @word.split
    array.sort!
    word_list.each do |match|
      compare = match.split
      compare.sort!
      if array == compare
        return true
      end
    end
  end
end
