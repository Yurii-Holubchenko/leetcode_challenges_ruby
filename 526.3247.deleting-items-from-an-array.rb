# https://leetcode.com/explore/learn/card/fun-with-arrays/526/deleting-items-from-an-array/3247/

# Test cases:
# nums = [3,2,2,3], val = 3
# nums = [0,1,2,2,3,0,4,2], val = 2
# nums = [], val = 0
# nums = [1], val = 1

# Expected results:
# 2, nums = [2,2]
# 5, nums = [0,1,4,0,3]
# 0, nums = []
# 1, nums = []

# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
  # If the array is empty, then there is nothing to delete
  return 0 if nums.empty?

  length = nums.length
  pointer_left = 0
  pointer_right = length - 1

  while pointer_left <= pointer_right
    # If element from left is element, which we should delete - move it to the right to "invisible" zone
    if nums[pointer_left] == val
      nums[pointer_right], nums[pointer_left] = nums[pointer_left], nums[pointer_right]
      pointer_right -= 1
    else
      pointer_left += 1
    end
  end

  pointer_left
end
