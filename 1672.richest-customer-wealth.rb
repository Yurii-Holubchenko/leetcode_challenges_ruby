# https://leetcode.com/problems/richest-customer-wealth/

# Test cases:
# accounts = [[1,2,3],[3,2,1]]
# accounts = [[1,5],[7,3],[3,5]]
# accounts = [[2,8,7],[7,1,3],[1,9,5]]

# Expected results:
# 6
# 10
# 17

# @param {Integer[][]} accounts
# @return {Integer}

# :map solution
def maximum_wealth(accounts)
  accounts.map(&:sum).max
end

# :each solution
def maximum_wealth(accounts)
  max_wealth = 0

  accounts.each do |account|
    sum = account.sum
    max_wealth = sum if max_wealth < sum
  end

  max_wealth
end

# :reduce solution
def maximum_wealth(accounts)
  accounts.reduce(0) do |max_wealth, account|
    sum = account.sum
    max_wealth < sum ? sum : max_wealth
  end
end
