# Write a function that reverses an array without using .reverse.
# TIME: 6:37

def reverse_array(arr)
  result = []
  i = arr.length - 1
  while i >= 0
    result.push(arr[i])
    i -= 1
  end
  result
end

p reverse_array([1, 2, 3, 4])  # => [4, 3, 2, 1]
p reverse_array(["a", "b", "c"])  # => ["c", "b", "a"]

=begin
  get and use the length of the array
  decrement from the end of the array and push each element into a new array
  terminate when index is less than 0
  return new array
=end