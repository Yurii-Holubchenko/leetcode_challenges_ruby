# Array concat without dynamic extension
def reverse_concat(arr1, arr2)
  length1 = arr1.length
  length2 = arr2.length
  arr = Array.new(length1 + length2)

  arr2.each_with_index { |e, i| arr[i] = e }

  arr1.each_with_index { |e, i| arr[i + length2] = e }

  puts "Reverse concat arrays: #{arr}"
end
# reverse_concat([4, 5], [1, 2, 3])

# Appending element to the array
def append_element(arr1, element)
  length1 = arr1.length
  arr = Array.new(length1 + 1)

  length1.times { |i| arr[i] = arr1[i] }

  length1.downto(0) { |i| arr[i] = arr1[i - 1] }
  arr[0] = element

  puts "Append new element #{element} to #{arr1}: #{arr}"
end
# append_element([1, 2, 3], 4)

# Appending array to the array
def append_array(arr1, arr2)
  length1 = arr1.length
  length2 = arr2.length
  arr = Array.new(length1 + length2)

  length1.times { |i| arr[i] = arr1[i] }

  # Shift arr1 elements for arr2.length positions
  length1.times { |i| arr[length2 + i] = arr1[i] }

  # Append elements of arr2
  length2.times { |i| arr[i] = arr2[i] }

  puts "Append new array #{arr2} to #{arr1}: #{arr}"
end
# append_array([1, 2, 3], [4, 5])

# Insert element to array in given index
def insert_element(arr1, index, element)
  length1 = arr1.length
  arr = Array.new(length1 + 1)

  # Fill new array with elements and add extra capacity for new element
  length1.times { |i| arr[i] = arr1[i] }

  # Shift all elements to the right from index
  (length1 - index).times { |i| arr[i + index + 1] = arr1[i + index] }

  # Insert new element in index
  arr[index] = element

  puts "Insert element #{element} to #{arr1} index #{index}: #{arr}"
end
# insert_element([1, 2, 3], 1, 5)

# Insert array to array after given index
def insert_element(arr1, index, arr2)
  length1 = arr1.length
  length2 = arr2.length
  length = length1 + length2
  arr = Array.new(length)

  # Fill new array with elements from first array and leave extra capacity for second array
  length1.times { |i| arr[i] = arr1[i] }

  # Shift all elements to the right from index to the length of the second array
  # IMPORTANT:
  #   Elements should be shifted from last to first because otherwise we will have an override problem
  (length1 - 1).downto(index) { |i| arr[i + length2] = arr[i] }

  # Insert second array from index
  length2.times { |i| arr[index + i] = arr2[i] }

  puts "Insert array #{arr2} to #{arr1} after given index #{index}: #{arr}"
end
insert_element([1, 7, 8, 9], 2, [3, 4])
