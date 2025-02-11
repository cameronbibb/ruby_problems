# Write a function that determines if two words are anagrams of each other.
# Challenge: Solve it without sorting.
# TIME: 

def is_anagram(word1, word2)
  word1_chars = Hash.new(0)
  word2_chars = Hash.new(0)

  longer_word = word1.length > word2.length ? word1 : word2

  word1.each_char {|char| word1_chars[char] += 1}
  word2.each_char {|char| word2_chars[char] += 1}

  longer_word.each_char {|char| return false if word1_chars[char] != word2_chars[char]}
  true
end

p is_anagram("listen", "silent") == true
p is_anagram("rail safety", "fairy tales") == true  # Ignores spaces
p is_anagram("hello", "world") == false

=begin

  iterate through each word, storing the count of their characters in a hash-one for each word


=end