<!-- template tricks:
-to change pairs to .pairs, "mv pairs .pairs"
-to delete the .git, "rm -rf .git"  -->


# _Anagrams_

#### _Will check if two words are anagrams. 04/21/2017_

#### By _**Ben Metzger**_

## Description

_Two words are anagrams if they contain the exact same letters in a different order. For example, "ruby" and "bury" are anagrams because they contain the same letters_

* Check if two words are anagrams. If they are, your method should return something like this: "These words are anagrams."

* Account for the possibility that words might have different cases but should still be anagrams. For instance, "Tea" is still an anagram of "Eat".

* If a word or phrase is an anagram, check if it's also a palindrome. The method should return something like: "These words are palindromes."

* Add a rule to check if the inputs are words. Words can only be anagrams or anagrams if they are, in fact, actually words. (For instance, "yurb" isn't an anagram of "ruby" because "yurb" isn't a real word.) A word must contain a vowel (a, i, e, o, u) or y. Otherwise it's not a word. If one of the inputs has no vowels, your method should return something like this: "You need to input actual words!"

* If phrases aren't anagrams, the method should check whether they are actually "antigrams." For our purposes, a word is an "antigram" of another word if no letters match. For example, "hi" has no matches with "bye". The method should return something like this if there are no letter matches: "These words have no letter matches and are antigrams."

* Account for multiple words being anagrams or "antigrams." Spaces and punctuation shouldn't count (so they should be removed). You'll need to make sure that each word in the inputted phrases is really a word (passing condition #4 above). You may want to use a regular expression to remove additional characters.

## Setup/Installation Requirements

* _Must have Ruby and Sinatra installed_
* _Clone this repository_
* _Open terminal and run ruby app.rb_

## Known Bugs

_None_


## Technologies Used

_Ruby and Sinatra._

### License

  *MIT*

Copyright (c) 2017 **_Ben Metzger_**
