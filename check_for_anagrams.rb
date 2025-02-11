# Write a function that determines if two words are anagrams of each other.
# TIME: 5:17

def is_anagram(word1, word2)
  word1.downcase.gsub(/\s+/, "").chars.sort == word2.downcase.gsub(/\s+/, "").chars.sort
end

p is_anagram("listen", "silent") == true
p is_anagram("rail safety", "fairy tales") == true  # Ignores spaces
p is_anagram("hello", "world") == false

=begin

sort each word and compare

=end


# Follow-up Challenge: Solve it without sorting.