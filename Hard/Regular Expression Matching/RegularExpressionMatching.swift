//
//  RegularExpressionMatching.swift
//
//
//  Created by Mihail Boyko on 13/03/24.
//


class Solution {
    /**
     Given an input string s and a pattern p, implement regular expression matching with support for '.' and '*' where:

     '.' Matches any single character.
     '*' Matches zero or more of the preceding element.
     The matching should cover the entire input string (not partial).
     
    Example 1:
     Input: s = "aa", p = "a"
     Output: false
     Explanation: "a" does not match the entire string "aa".
     
    Example 2:
     Input: s = "aa", p = "a*"
     Output: true
     Explanation: '*' means zero or more of the preceding element, 'a'. Therefore, by repeating 'a' once, it becomes "aa".
     */
    /// O(m*n)
    static func isMatch(_ s: String, _ p: String) -> Bool {
        let pArr = Array(p)
        let sArr = Array(s)
        let pLen = p.count
        let sLen = s.count
        
        var dp = Array(repeating: Array(repeating: false, count: pLen + 1), count: sLen + 1)
        dp[0][0] = true
        
        for j in 1...pLen {
            if pArr[j - 1] == "*" {
                dp[0][j] = dp[0][j - 2]
            }
        }
        
        for i in 1...sLen {
            for j in 1...pLen {
                if pArr[j-1] == "." || pArr[j-1] == sArr[i-1] {
                    dp[i][j] = dp[i - 1][j - 1]
                } else if pArr[j-1] == "*" {
                    dp[i][j] = dp[i][j - 2]
                    if pArr[j - 2] == "." || pArr[j - 2] == sArr[i - 1] {
                        dp[i][j] = dp[i][j] || dp[i - 1][j]
                    }
                }
            }
        }
        return dp[sLen][pLen]
    }
}

// Example usage:
let s = "aa"
let p = "a*"
print(Solution.isMatch(s, p) == true) // Output: true
