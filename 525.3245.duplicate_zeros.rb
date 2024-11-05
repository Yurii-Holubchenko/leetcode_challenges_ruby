# https://leetcode.com/explore/learn/card/fun-with-arrays/525/inserting-items-into-an-array/3245/

# Test cases:
# arr = [1,0,2,3,0,4,5,0]
# arr = [1,2,3]
# arr = [0,0,0,0,0,0,0]
# arr = [9,9,9,4,8,0,0,3,7,2,0,0,0,0,9,1,0,0,1,1,0,5,6,3,1,6,0,0,2,3,4,7,0,3,9,3,6,5,8,9,1,1,3,2,0,0,7,3,3,0,5,7,0,8,1,9,6,3,0,8,8,8,8,0,0,5,0,0,0,3,7,7,7,7,5,1,0,0,8,0,0]

# Expected results:
# [1,0,0,2,3,0,0,4]
# [1,2,3]
# [0,0,0,0,0,0,0]
# [9,9,9,4,8,0,0,0,0,3,7,2,0,0,0,0,0,0,0,0,9,1,0,0,0,0,1,1,0,0,5,6,3,1,6,0,0,0,0,2,3,4,7,0,0,3,9,3,6,5,8,9,1,1,3,2,0,0,0,0,7,3,3,0,0,5,7,0,0,8,1,9,6,3,0,0,8,8,8,8,0]

# @param {Integer[]} arr
# @return {Void} Do not return anything, modify arr in-place instead.

# With shift elements
def duplicate_zeros(arr)
  length = arr.length
  shift = false

  length.times do |i|
    if shift
      shift = false
      next
    end

    if arr[i].zero? && arr[i + 1]
      shift = true

      tmp = arr[i + 1..length - 2]
      arr[i + 1] = 0
      arr[i + 2..length - 1] = tmp
    end
  end
end

# With new array
def duplicate_zeros(arr)
  arr_init = arr.dup
  arr_result = []

  until arr_init.index(0).nil?
    index = arr_init.index(0)

    arr_result.push(*arr_init[0..index])
    arr_result.push(0)
    arr_init = arr_init[index + 1..arr_init.length - 2]
  end

  length = arr.length - 1
  arr_result += arr_init
  arr[0..length] = arr_result[0..length]
end

# With insert
def duplicate_zeros(arr)
  i = 0

  while i < arr.length
    if arr[i] == 0
      arr.insert(i + 1, 0)
      arr.pop
      i += 2
    else
      i += 1
    end
  end
end
