# Your code goes here!
class Anagram
  attr_accessor :word, :anagrams

  def initialize(word)
    @word = word
  end

  def match(word_list)
    array = @word.split
    array.sort!
    word_list.collect do |match|
      compare = match.split
      compare.sort!
      if array == compare
        match
      end
    end
  end
end
