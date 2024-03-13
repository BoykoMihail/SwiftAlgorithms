//
//  PalindromeNumber.swift
//
//
//  Created by Mihail Boyko on 13/03/24.
//


class Solution {
    /**
     Given an integer x, return true if x is a palindrome, and false otherwise.
     
    Example 1:
     Input: x = 121
     Output: true
     Explanation: 121 reads as 121 from left to right and from right to left.
     
    Example 2:
     Input: x = -121
     Output: false
     Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
     */
    /// O(log(x))
    static func isPalindrome(_ x: Int) -> Bool {
        guard x >= 0 else {
            return false
        }
        
        var reversed = 0
        var num = x
        
        while num > 0 {
            let digit = num % 10
            reversed = reversed*10 + digit
            num /= 10
        }
        
        return reversed == x
    }
}

// Example usage:
let x1 = 121
let x2 = -121
let x3 = 10

print(Solution.isPalindrome(x1) == true) // Output: true (121 is a palindrome)
print(Solution.isPalindrome(x2) == false) // Output: false (-121 is not a palindrome)
print(Solution.isPalindrome(x3) == false) // Output: false (10 is not a palindrome)

