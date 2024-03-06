//
//  Atoi.swift
//
//
//  Created by Mihail Boyko on 6/03/24.
//


class Solution {
    /**
     Implement the myAtoi(string s) function, which converts a string to a 32-bit signed integer (similar to C/C++'s atoi function).

     The algorithm for myAtoi(string s) is as follows:

     Read in and ignore any leading whitespace.
     Check if the next character (if not already at the end of the string) is '-' or '+'. Read this character in if it is either. This determines if the final result is negative or positive respectively. Assume the result is positive if neither is present.
     Read in next the characters until the next non-digit character or the end of the input is reached. The rest of the string is ignored.
     Convert these digits into an integer (i.e. "123" -> 123, "0032" -> 32). If no digits were read, then the integer is 0. Change the sign as necessary (from step 2).
     If the integer is out of the 32-bit signed integer range [-231, 231 - 1], then clamp the integer so that it remains in the range. Specifically, integers less than -231 should be clamped to -231, and integers greater than 231 - 1 should be clamped to 231 - 1.
     Return the integer as the final result.
     Note:

     Only the space character ' ' is considered a whitespace character.
     Do not ignore any characters other than the leading whitespace or the rest of the string after the digits.
     
    Example 1:
     Input: s = "   -42"
     Output: -42
     Explanation:
     Step 1: "   -42" (leading whitespace is read and ignored)
                 ^
     Step 2: "   -42" ('-' is read, so the result should be negative)
                  ^
     Step 3: "   -42" ("42" is read in)
                    ^
     The parsed integer is -42.
     Since -42 is in the range [-231, 231 - 1], the final result is -42.

     
    Example 2:
     Input: s = "42"
     Output: 42
     Explanation: The underlined characters are what is read in, the caret is the current reader position.
     Step 1: "42" (no characters read because there is no leading whitespace)
              ^
     Step 2: "42" (no characters read because there is neither a '-' nor '+')
              ^
     Step 3: "42" ("42" is read in)
                ^
     The parsed integer is 42.
     Since 42 is in the range [-231, 231 - 1], the final result is 42.
     */
    /// O(n)
    static func myAtoi(_ s: String) -> Int {
        var sign = 1
        var result = 0
        var index = 0
        let array = Array(s)
        
        while index < s.count && array[index] == " " {
            index += 1
        }
        
        if index < s.count && (array[index] == "+" || array[index] == "-") {
            sign = array[index] == "+" ? 1 : -1
            index += 1
        }
        
        while index < s.count && array[index].isNumber {
            let digit = Int(String(array[index])) ?? 0
            
            if result > Int32.max/10 || (result == Int32.max/10 && digit > 7) {
                return sign == 1 ? Int(Int32.max) : Int(Int32.min)
            }
            
            result = result*10 + digit
            index += 1
        }
        
        return result*sign
    }
}

// Example usage:
let s = "   -42"
print(Solution.myAtoi(s) == -42) // Output: -42
let s2 = "   42"
print(Solution.myAtoi(s2) == 42) // Output: 42

