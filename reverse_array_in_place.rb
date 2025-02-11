# Write a function that reverses an array in-place without using .reverse.
# TIME: 10:00

def reverse_array!(arr)
  a = 0
  b = arr.length - 1

  while a <= b
    # swap a and b
    a_elem = arr[a]
    b_elem = arr[b]
    arr[b] = a_elem
    arr[a] = b_elem
    a += 1
    b -= 1
  end

  arr
end

p reverse_array!([1, 2, 3, 4])  # Expected: [4, 3, 2, 1]
p reverse_array!(['a', 'b', 'c', 'd'])  # Expected: ['d', 'c', 'b', 'a']
p reverse_array!([5])  # Expected: [5] (Edge case: single element)
p reverse_array!([])  # Expected: [] (Edge case: empty array)

=begin
  two-pointer approach
    start - pointer at the start of the array and increments toward the middle
    end - pointer at the end of the array and decrements toward the middle
  terminate/stop when the index of the pointers are equal


=end