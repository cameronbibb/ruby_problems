# Given a non-sorted array and a target sum, return the indices of the two numbers that add up to the target.
# TIME: 14:00

def two_sum(arr, target)
  nums = {}
  arr.each_with_index do |num, idx|
    difference = target - num
    return [nums[difference], idx] if nums.key?(difference)
    nums[num] = idx
  end
  []
end

p two_sum([3, 2, 4], 6) == [1, 2]
p two_sum([1, 7, 11, 15], 8) == [0, 1]
p two_sum([5, 3, 10, 45, 2], 12) == [2, 4]
p two_sum([1, 2, 3, 4], 10) == []

=begin

the given array is not sorted
find and return the indices of the numbers that add up to the target

init an empty hash
iterate through array
store each number in the hash as the key with its index as the value
for the first number (if index is 0) store in the hash and move to the next
once sum == target return the indices
if there is no match return an empty array []

[3, 2, 4], 6
       i

check if the difference is in the hash
target - current_num = difference
{ 
  3: 0,
  2: 1,         return [1, 2]

}

=end