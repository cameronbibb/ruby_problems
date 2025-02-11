# Write a function that finds all duplicate numbers in an array.
# TIME:8:05

def find_duplicates(arr)
  nums_found = {}
  i = 0
  result =[]
  while i < arr.length
    if nums_found.key?(arr[i])
      result.push(arr[i])
    end
    nums_found[arr[i]] = i
    i += 1
  end
  result
end

p find_duplicates([1, 2, 3, 2, 4, 5, 5]) == [2, 5]
p find_duplicates([10, 20, 30, 40]) == []

=begin
  iterate through the array
  store each number in a hash as a key with index as its value (useful?)

  while i < arr.length

  [1, 2, 3, 2, 4, 5, 5]
                       i

   is arr[i] in hash?   2
  { 1: 0,
    2: 4,
    3: 2,
    4: 5,
    5: 7,
     }

    if arr[i] is in hash push it to the result array
    update the value in the hash to this index (its last position found)
    [2, 5]
=end