# Given a string, return the first non-repeating character. Restraint: Use a hash.
# TIME: 11:10

def first_unique_char(str)
  occurrences = Hash.new(0)

  str.each_char { |char| occurrences[char] += 1 }

  str.each_char { |char| return char if occurrences[char] == 1 }

  ""
end

p first_unique_char("swiss")  # => "w"
p first_unique_char("racecar")  # => "e"

=begin
iterate through the string
  count the number of occurrences of each letter
    (use a hash to store the number of occurences of a letter)
iterate through the string again
  check the number of occurences of each letter
  the first letter with the value of 1 gets returned
=end