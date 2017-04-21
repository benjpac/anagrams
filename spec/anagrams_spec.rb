require('rspec')
require('anagrams')

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

describe('String#anagrams') do
  it("Check if two words are anagrams.") do
    expect("ruby".anagrams("bury")).to eq("These words are anagrams.")
  end
  it("Account for the possibility that words might have different cases but should still be anagrams") do
    expect("Tea".anagrams("Eat")).to eq("These words are anagrams.")
  end
  it("returns true for a word that is a palindrome") do
    expect("racecar".palindrome?()).to eq(true)
  end
end
