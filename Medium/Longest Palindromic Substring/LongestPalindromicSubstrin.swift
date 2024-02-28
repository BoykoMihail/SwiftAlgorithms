//
//  LongestPalindromicSubstrin.swift
//
//
//  Created by Mihail Boyko on 2/23/24.
//

class Solution {
    /**
     Given a string s, return the longest palindromic substring in s.
     
    Example 1:
     Input: s = "babad"
     Output: "bab"
     Explanation: "aba" is also a valid answer.
     */
    /// O(n^2)
    static func longestPalindrome(_ s: String) -> String {
        let n = s.count
        let sArray = Array(s)
        if n < 2 {
            return s
        }
        
        var maxLength = 1
        var start = 0
        var table = Array(repeating: Array(repeating: false, count: n), count: n)
        
        for i in 0..<n {
            table[i][i] = true
        }
        
        for i in 0...n-2 {
            if sArray[i] == sArray[i+1] {
                start = i
                maxLength = 2
                table[i][i+1] = true
            }
        }
        
        guard n > 2 else {
            let startIndex = s.index(s.startIndex, offsetBy: start)
            let endIndex = s.index(startIndex, offsetBy: maxLength - 1)
            return String(s[startIndex...endIndex])
        }
        
        for length in 3...n {
            for i in 0...n-length {
                if sArray[i] == sArray[i+length-1] && table[i+1][i+length-2] {
                    if length > maxLength {
                        start = i
                        maxLength = length
                    }
                    table[i][i+length-1] = true
                }
            }
        }
        let startIndex = s.index(s.startIndex, offsetBy: start)
        let endIndex = s.index(startIndex, offsetBy: maxLength - 1)
        return String(s[startIndex...endIndex])
                          
    }
}

// Example usage:
let s = "bjlctreqwetr"
print(Solution.longestPalindrome(s))  // Output: "b"
let s2 = "bbbbb"
print(Solution.longestPalindrome(s2))  // Output: "bbbbb"
let s3 = "babad"
print(Solution.longestPalindrome(s3))  // Output: "bab"
let s4 = "cbbd"
print(Solution.longestPalindrome(s4))  // Output: "bb"
let s5 = "ac"
print(Solution.longestPalindrome(s5))  // Output: "a"
let s6 = "civilwartestingwhetherthatnaptionoranynartionsoconceivedandsodedicatedcanlongendureWeareqmetonagreatbattlefiemldoftzhatwarWehavecometodedicpateaportionofthatfieldasafinalrestingplaceforthosewhoheregavetheirlivesthatthatnationmightliveItisaltogetherfangandproperthatweshoulddothisButinalargersensewecannotdedicatewecannotconsecratewecannothallowthisgroundThebravelmenlivinganddeadwhostruggledherehaveconsecrateditfaraboveourpoorponwertoaddordetractTgheworldadswfilllittlenotlenorlongrememberwhatwesayherebutitcanneverforgetwhattheydidhereItisforusthelivingrathertobededicatedheretotheulnfinishedworkwhichtheywhofoughtherehavethusfarsonoblyadvancedItisratherforustobeherededicatedtothegreattdafskremainingbeforeusthatfromthesehonoreddeadwetakeincreaseddevotiontothatcauseforwhichtheygavethelastpfullmeasureofdevotionthatweherehighlyresolvethatthesedeadshallnothavediedinvainthatthisnationunsderGodshallhaveanewbirthoffreedomandthatgovernmentofthepeoplebythepeopleforthepeopleshallnotperishfromtheearth"
print(Solution.longestPalindrome(s6))  // Output: "ranynar"

