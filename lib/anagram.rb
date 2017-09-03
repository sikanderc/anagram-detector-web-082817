require "pry"

class Anagram

  attr_accessor :given_word

  def initialize(given_word)
    @given_word = given_word
  end

  def match(possible_anagrams)
    matched_word = []
    possible_anagrams.each { |x|
      if @given_word.split("").sort == x.to_s.split("").sort
        matched_word << x
      end
    }
    matched_word
  end

end
