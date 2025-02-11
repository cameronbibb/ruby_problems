# Given a sorted array and a target sum, return the indices of the two numbers that add up to the target.
# TIME: 8:24

def two_sum(arr, target)
  # Your code here (Use Two Pointers)
  a = 0
  b = arr.length - 1
  while a < b
    sum = arr[a] + arr[b]
    return [a, b] if sum == target
    sum > target ? b -= 1 : a += 1
  end

  []
end

p two_sum([1, 3, 4, 6, 8, 9], 10) == [0, 5]
p two_sum([2, 7, 11, 15], 9) == [0, 1]
p two_sum([1, 2, 3, 4, 5], 10) == []  # Edge case: no solution

=begin
the array is sorted
have to use two pointers

[1, 3, 4, 6, 8, 9], 10
          a
          b

1 + 9 = 10

if the sum is greater than the target, decrement b
  if the sum is less than the target, increment a
    terminate loop once one of two conditions is met:
      1. a < b
      2. sum == target

=end