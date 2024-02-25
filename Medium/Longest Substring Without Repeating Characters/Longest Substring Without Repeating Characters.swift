//
//  LengthOfLongestSubstring.swift
//
//
//  Created by Mihail Boyko on 2/23/24.
//

class Solution {
    /**
     Given a string s, find the length of the longest substring without repeating characters.
     
    Example 1:
     Input: s = "abcabcbb"
     Output: 3
     Explanation: The answer is "abc", with the length of 3.
     */
    /// O(n)
    static func lengthOfLongestSubstring(_ s: String) -> Int {
        var maxlength = 0
        var charIndexMap = [Character: Int]()
        var startIndex = 0
        
        for (index, char) in s.enumerated() {
            if let prevIndex = charIndexMap[char], prevIndex >= startIndex {
                startIndex = prevIndex + 1
            }
            
            maxlength = max(maxlength, index - startIndex + 1)
            charIndexMap[char] = index
        }
        
        return maxlength
    }
}

let result1 = Solution.lengthOfLongestSubstring("abcabcbb")
let result2 = Solution.lengthOfLongestSubstring("bbbbb")
print("Result1 = ", result1)
print("Result2 = ", result2)
