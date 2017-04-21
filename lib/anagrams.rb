# You should have at least one passing test for each of the included steps (in other words, a minimum of 6 tests). Make sure you commit after each passing test. Your final project should have at least 7 commits: one for each passing test and at least one for your Sinatra code.
#
# Two words are anagrams if they contain the exact same letters in a different order. For example, "ruby" and "bury" are anagrams because they contain the same letters.
#
# Check if two words are anagrams. If they are, your method should return something like this: "These words are anagrams."
#
# Account for the possibility that words might have different cases but should still be anagrams. For instance, "Tea" is still an anagram of "Eat".
#
# If a word or phrase is an anagram, check if it's also a palindrome. The method should return something like: "These words are palindromes."
#
# Add a rule to check if the inputs are words. Words can only be anagrams or anagrams if they are, in fact, actually words. (For instance, "yurb" isn't an anagram of "ruby" because "yurb" isn't a real word.) A word must contain a vowel (a, i, e, o, u) or y. Otherwise it's not a word. If one of the inputs has no vowels, your method should return something like this: "You need to input actual words!"
#
# If phrases aren't anagrams, the method should check whether they are actually "antigrams." For our purposes, a word is an "antigram" of another word if no letters match. For example, "hi" has no matches with "bye". The method should return something like this if there are no letter matches: "These words have no letter matches and are antigrams."
#
# Account for multiple words being anagrams or "antigrams." Spaces and punctuation shouldn't count (so they should be removed). You'll need to make sure that each word in the inputted phrases is really a word (passing condition #4 above). You may want to use a regular expression to remove additional characters.
#
# Bonus points: Make your method check a string of words and also a Fixnum.

class Array
  def word?
    vowels = ["a", "o", "i", "u", "e"]

  end
end

class Array
  def remove_if_present(second_word)
    first_word = self
    first_word.each() do |letter|
      if second_word.include?(letter)
        letter_index = second_word.find_index(letter)
        second_word.delete_at(letter_index)
      end
    end
    second_word
  end
end

class Array
  def anagrams?(second_word)
    first_word = self
    second_word_checked = first_word.remove_if_present(second_word)
    if second_word_checked.empty?
      true
    else
      false
    end
  end
end

class Array
  def antigram?(second_word)
    first_word = self
    second_word_checked = first_word.remove_if_present(second_word)
    if first_word.length() == second_word_checked.length()
      true
    else
      false
    end
  end
end

class String
  def format_string
    phrase_formatted = self.downcase.gsub(/[^a-z0-9]/i, '')
    phrase_formatted
  end
end

class String
  def palindrome?
    word_reversed = self.reverse()
    if word_reversed == self
      true
    else
      false
    end
  end
end

class String
  def equal_length?(second_word)
    first_word = self
    if first_word.length() == second_word.length()
      true
    else
      false
    end
  end
end

class String
  def all_tests(second_word)
    first_word = self.format_string()
    second_word = second_word.format_string()
    first_word_array = self.split("")
    second_word_array = second_word.split("")


  end
end
