# https://leetcode.com/problems/number-of-steps-to-reduce-a-number-to-zero/

# Test cases:
# num = 14
# num = 8
# num = 123

# Expected results:
# 6
# 4
# 12

# @param {Integer} num
# @return {Integer}

# Recursive solution
def number_of_steps(num)
  return 0 if num.zero?

  num.even? ? num /= 2 : num -= 1

  number_of_steps(num) + 1
end

# :while solution
def number_of_steps(num)
  steps = 0

  while num > 0
    steps += 1
    num.even? ? num /= 2 : num -= 1
  end

  steps
end

# :until solution
def number_of_steps(num)
  steps = 0

  until num <= 0
    steps += 1
    num.even? ? num /= 2 : num -= 1
  end

  steps
end

# byte solution
def number_of_steps(num)
  num.to_s(2).chars.sum(-1) { |e| e.to_i + 1 }
end
