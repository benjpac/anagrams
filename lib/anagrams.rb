class Array
  def word?
    word = self
    vowels = ["a", "o", "i", "u", "e", "y"]
    vowel_count = 0
    word.each() do |letter|
      if vowels.include?(letter)
        vowel_count += 1
      end
    end
    vowel_count > 0
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
    tests = []

    if first_word.equal_length?(second_word)
      tests.push("Words are equal lengths")
    else
      tests.push("Words are not equal lengths")
    end

    if first_word.palindrome?
      tests.push("First word is a palindrome")
    else
      tests.push("First word is not a palindrome")
    end
    if second_word.palindrome?
      tests.push("Second word is a palindrome")
    else
      tests.push("Second word is not a palindrome")
    end

    if first_word_array.antigram?(second_word_array)
      tests.push("Words are a antigrams")
    else
      tests.push("Words are not antigrams")
    end

    if first_word_array.anagrams?(second_word_array)
      tests.push("Words are a anagrams")
    else
      tests.push("Words are not anagrams")
    end

    if first_word_array.word?
      tests.push("First word is a word")
    else
      tests.push("First word is not a word")
    end
    if second_word_array.word?
      tests.push("Second word is a word")
    else
      tests.push("Second word is not a word")
    end
    tests
  end
end
