# https://leetcode.com/explore/learn/card/fun-with-arrays/521/introduction/3240/

# Test cases:
# nums = [-4,-1,0,3,10]
# nums = [-7,-3,2,3,11]

# Expected results:
# [0,1,9,16,100]
# [4,9,9,49,121]

# @param {Integer[]} nums
# @return {Integer[]}

# Simplest solution
def sorted_squares(nums)
  nums.map { |num| num.pow(2) }.sort
end

# Harder solution
# On each iteration go from both sides of array and push the biggest element to the end of new array
def sorted_squares(nums)
  arr = []
  l = 0
  r = nums.length - 1
  i = r

  until i < 0
    left = nums[l].pow(2)
    right = nums[r].pow(2)

    if left > right
      arr[i] = left
      l += 1
    else
      arr[i] = right
      r -= 1
    end

    i -= 1
  end

  arr
end
