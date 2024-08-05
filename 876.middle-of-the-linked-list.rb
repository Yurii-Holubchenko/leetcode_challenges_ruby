# https://leetcode.com/problems/middle-of-the-linked-list/

# Test cases:
# head = [1,2,3,4,5]
# head = [1,2,3,4,5,6]

# Expected results:
# [3,4,5]
# [4,5,6]

# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

# @param {ListNode} head
# @return {ListNode}

# :while solution
def middle_node(head)
  values = []

  while head
    values << head.val
    head = head.next
  end

  start_index = values.length / 2
  values[start_index..values.length - 1]
end

# :until solution
def middle_node(head)
  values = []

  until head.nil?
    values << head.val
    head = head.next
  end

  start_index = values.length / 2
  values[start_index..values.length - 1]
end

# :recursion solution
def node_values(head)
  head ? [head.val, node_values(head.next)].flatten : []
end

def middle_node(head)
  values = node_values(head)
  start_index = values.length / 2

  values[start_index..values.length - 1]
end

# 2 pointer solution
def middle_node(head)
  fast = middle = head

  while fast && fast.next do
    middle = middle.next
    fast = fast.next.next
  end

  return middle
end
