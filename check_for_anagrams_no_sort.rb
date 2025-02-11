# Write a function that determines if two words are anagrams of each other.
# Challenge: Solve it without sorting.
# TIME: 5:00

def is_anagram(word1, word2)
  return false if word1.length != word2.length

  char_counts = Hash.new(0)

  word1.each_char {|char| char_counts[char] += 1}
  word2.each_char {|char| char_counts[char] -= 1}

  char_counts.values.all?(&:zero?)
end

p is_anagram("listen", "silent") == true
p is_anagram("rail safety", "fairy tales") == true  # Ignores spaces
p is_anagram("hello", "world") == false

=begin

=end