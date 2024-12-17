# https://leetcode.com/explore/learn/card/fun-with-arrays/526/deleting-items-from-an-array/3248/

# Test cases:
# nums = [1,1,2]
# nums = [0,0,1,1,1,2,2,3,3,4]
# nums = [1,1,1,2,3,4,4,4,5]

# Expected results:
# 2, nums = [1,2]
# 5, nums = [0,1,2,3,4]
# 5, nums = [1,2,3,4,5]

# @param {Integer[]} nums
# @return {Integer}

# With one-run cycle
def remove_duplicates(nums)
  current_element = nums[0]
  uniq_counter = 1

  nums.length.times do |i|
    next if nums[i] == current_element

    current_element = nums[i]
    nums[uniq_counter], nums[i] = nums[i], nums[uniq_counter]
    uniq_counter += 1
  end

  uniq_counter
end

# With :delete_at
def remove_duplicates(nums)
  i = 0

  while i < nums.length - 1
    i += 1 unless nums[i] == nums[i + 1]

    nums.delete_at(i + 1)
  end

  nums.length
end

# With :replace and Hash
def remove_duplicates(nums)
  hash = {}

  nums.each { |value| hash[value] = value unless hash[value] }

  nums.replace(hash.keys)

  nums.length
end

# With :compact
def remove_duplicates(nums)
  current_element = nil

  nums.length.times do |i|
    if nums[i] == current_element
      nums[i] = nil
    else
      current_element = nums[i]
    end
  end

  nums.compact!.length
end
