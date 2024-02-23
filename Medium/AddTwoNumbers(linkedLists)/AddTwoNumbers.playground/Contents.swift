
///Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    var asArray: [Int] {
        var result = [Int]()
        var node: ListNode? = self
        while node != nil {
            result.append(node!.val)
            node = node?.next
        }
        return result
    }
}


class Solution {
    /**
     You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.

     You may assume the two numbers do not contain any leading zero, except the number 0 itself.
     
    Example 1:
     Input: l1 = [2,4,3], l2 = [5,6,4]
     Output: [7,0,8]
     Explanation: 342 + 465 = 807.
     */
    /// O(max(m, n))
    static func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var carry = 0
        var listHead = ListNode(0)
        var resultList: ListNode = listHead
        var p = l1
        var q = l2
        
        while p != nil || q != nil {
            let firstNumber = p?.val ?? .zero
            let secondNumber = q?.val ?? .zero
            let sum = firstNumber + secondNumber + carry
            carry = sum / 10
            resultList.next = ListNode(sum % 10)
            resultList = resultList.next!
            p = p?.next
            q = q?.next
        }
        
        if carry > .zero {
            resultList.next = ListNode(carry)
        }
        
        return listHead.next
    }
}

let l1 = ListNode(2, ListNode(4, ListNode(3)))
let l2 = ListNode(5, ListNode(6, ListNode(4)))
let result = Solution.addTwoNumbers(l1, l2)
print("Result = ", result?.asArray)
