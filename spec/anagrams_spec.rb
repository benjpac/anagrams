require('rspec')
require('anagrams')

# You should have at least one passing test for each of the included steps (in other words, a minimum of 6 tests). Make sure you commit after each passing test. Your final project should have at least 7 commits: one for each passing test and at least one for your Sinatra code.
#
# Add a rule to check if the inputs are words. Words can only be anagrams or anagrams if they are, in fact, actually words. (For instance, "yurb" isn't an anagram of "ruby" because "yurb" isn't a real word.) A word must contain a vowel (a, i, e, o, u) or y. Otherwise it's not a word. If one of the inputs has no vowels, your method should return something like this: "You need to input actual words!"
#
# If phrases aren't anagrams, the method should check whether they are actually "antigrams." For our purposes, a word is an "antigram" of another word if no letters match. For example, "hi" has no matches with "bye". The method should return something like this if there are no letter matches: "These words have no letter matches and are antigrams."


describe('Array#anagrams?') do
  it("return true if two words are anagrams.") do
    expect(["r", "u", "b", "y"].anagrams?(["b", "u", "r", "y"])).to eq(true)
  end
end

describe('Array#remove_if_present') do
  it('returns second_word as array after checking if the letters are present in the first_word') do
    expect(["d", "o", "n", "k", "e", "y"].remove_if_present(["y", "e", "k", "n", "o", "d", "z"])).to eq(["z"])
  end
end

describe('Array#antigram?') do
  it("returns true for a word that is an antigram") do
    expect(["a", "b", "c"].antigram?(["z", "y", "x"])).to eq(true)
  end
  it("returns false for a word that is not an antigram") do
    expect(["h", "e", "l", "l", "o"].antigram?(["e", "l", "l", "o", "h"])).to eq(false)
  end
end

describe('String#equal_length?') do
  it("returns true if words are equal length") do
    expect("abc".equal_length?("zyx")).to eq(true)
  end
  it("returns false if words are not equal length") do
    expect("abc".equal_length?("zyxgfgd")).to eq(false)
  end
end

describe('String#palindrome?') do
  it("returns true for a word that is a palindrome") do
    expect("racecar".palindrome?()).to eq(true)
  end
  it("returns false for a word that is not a palindrome") do
    expect("ben".palindrome?()).to eq(false)
  end
end

describe('String#all_tests') do
  # it("return true even if words have different case") do
  #   expect("Tea".all_tests("eat")).to eq(true)
  # end
  # "all tests failed. words are not the same length"
  # it("returns true if phrases are anagrams") do
  #   expect("aaa bbb ccc".all_tests("abc abc abc")).to eq(true)
  # end
  # it("returns true if phrases are anagrams and spaces are ignored") do
  #   expect("aaa bbb ccc".all_tests("abcabcabc")).to eq(true)
  # end
end
