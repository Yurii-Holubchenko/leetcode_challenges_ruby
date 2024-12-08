# https://leetcode.com/explore/learn/card/fun-with-arrays/525/inserting-items-into-an-array/3253/

# Test cases:
# nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
# nums1 = [1], m = 1, nums2 = [], n = 0
# nums1 = [0], m = 0, nums2 = [1], n = 1
# nums1 = [2,0], m = 1, nums2 = [1], n = 1
# nums1 = [-1,0,0,3,3,3,0,0,0], m = 6, nums2 = [1,2,2], n = 3

# Expected results:
# [1,2,2,3,5,6]
# [1]
# [1]
# [1,2]
# [-1,0,0,1,2,2,3,3,3]

# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
  # Return nums1 of nums2 is empty
  return nums1 if n.zero?

  length = m + n

  0.upto(length - 1) do |i|
    # If nums2 is empty, then there is only elements of nums1 left
    next if nums2.empty?

    # If there is no elements left in nums1, then just copy all other elements from nums2 to nums1
    if m.zero?
      e = nums2.shift
      nums1[i] = e
    # If element from nums1 is bigger then element from nums2, then shift all elements in nums1 to the right
    elsif nums1[i] > nums2[0]
      e = nums2.shift
      nums1[i + 1..length - 1] = nums1[i..length - 2]
      nums1[i] = e
    # If element from nums1 is smaller or equal then element from nums2, then jump to the next element
    else
      m -= 1
      next
    end
  end
end
