# https://leetcode.com/problems/root-equals-sum-of-children/

# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

# Test cases:
# [10,4,6]
# [5,3,1]

# Expected results
# true
# false

# @param {TreeNode} root
# @return {Boolean}

# Value switch solution
def check_tree(root)
  root.val == root.left.val + root.right.val
end
