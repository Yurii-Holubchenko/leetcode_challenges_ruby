# https://leetcode.com/problems/invert-binary-tree/description/

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
# [4,2,7,1,3,6,9]
# [2,1,3]
# []

# Expected results:
# [4,7,2,9,6,3,1]
# [2,3,1]
# []

# @param {TreeNode} root
# @return {TreeNode}
def invert_tree(root)
  return unless root

  root.left, root.right = root.right, root.left
  invert_tree(root.left)
  invert_tree(root.right)
  root
end
