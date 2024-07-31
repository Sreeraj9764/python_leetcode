from __future__ import annotations

class ListNode(object):
    def __init__(self, val:int =0, next:ListNode =None):
        self.val = val
        self.next = next
    def __str__(self):
        if self.next is None:
            return f"{self.val}"
        else:
            return f"{self.val} --> {self.next}"

class Solution(object):
    def addTwoNumbers(self, l1:ListNode, l2:ListNode) -> int:
        return 0
