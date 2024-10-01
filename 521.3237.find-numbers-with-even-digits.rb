# https://leetcode.com/explore/learn/card/fun-with-arrays/521/introduction/3237/

# Test cases:
# nums = [12,345,2,6,7896]
# nums = [555,901,482,1771]

# Expected results:
# 2
# 1

# @param {Integer[]} nums
# @return {Integer}

# String conversion solution
def find_numbers(nums)
  with_even_digits = 0

  nums.each do |num|
    with_even_digits += 1 if num.to_s.length.even?
  end

  with_even_digits
end

# Digits count solution
def find_numbers(nums)
  nums.count { |num| num.digits.count.even? }
end
