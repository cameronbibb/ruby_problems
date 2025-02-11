# Write a function that reverses an array in-place without using .reverse.
# TIME: 10:00

def reverse_array!(arr)
  a = 0
  b = arr.length - 1

  while a <= b
    arr[a], arr[b] = arr[b], arr[a]
    a += 1
    b -= 1
  end

  arr
end

p reverse_array!([1, 2, 3, 4]) == [4, 3, 2, 1]
p reverse_array!(['a', 'b', 'c', 'd']) == ['d', 'c', 'b', 'a']
p reverse_array!([5]) == [5] # (Edge case: single element)
p reverse_array!([]) == [] # (Edge case: empty array)

=begin
  two-pointer approach
    start - pointer at the start of the array and increments toward the middle
    end - pointer at the end of the array and decrements toward the middle
  terminate/stop when the index of the pointers are equal


=end