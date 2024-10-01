# https://leetcode.com/explore/learn/card/fun-with-arrays/521/introduction/3238/

# Test cases:
# [1,1,0,1,1,1]
# [1,0,1,1,0,1]
# [1,1,1,1,0,0,1,1]

# Expected results:
# 3
# 2
# 4

# @param {Integer[]} nums
# @return {Integer}

# Array methods solution
def find_max_consecutive_ones(nums)
  nums.join.split('0').map(&:size).max || 0
end

# :each solution
def find_max_consecutive_ones(nums)
  max = 0
  current = 0

  nums.each do |num|
    max = [max, current].max

    current = num.zero? ? 0 : current + 1

    max = [max, current].max
  end

  max
end
