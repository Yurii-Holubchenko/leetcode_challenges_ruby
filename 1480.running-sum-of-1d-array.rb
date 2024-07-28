# https://leetcode.com/problems/running-sum-of-1d-array/

# Test cases:
# nums = [1,2,3,4]
# nums = [1,1,1,1,1]
# nums = [3,1,2,10,1]

# Expected results:
# [1,3,6,10]
# [1,2,3,4,5]
# [3,4,6,16,17]

# @param {Integer[]} nums
# @return {Integer[]}

# :until cycle solution
def running_sum(nums)
  result = []

  until nums.empty?
    result.prepend(nums.sum)
    nums.pop
  end

  result
end

# :map solution 1
def running_sum(nums)
  nums.map.with_index { |_, i| nums[0..i].sum }
end

# :map solution 2
def running_sum(nums)
  sum = 0
  nums.map { |e| sum += e }
end

# Overwrite initial array solution
def running_sum(nums)
  nums.each_with_index do |_, i|
    next if i.zero?
    nums[i] += nums[i - 1]
  end
end
