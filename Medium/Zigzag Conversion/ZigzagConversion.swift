//
//  ZigzagConversion.swift
//
//
//  Created by Mihail Boyko on 1/03/24.
//

class Solution {
    /**
     The string "PAYPALISHIRING" is written in a zigzag pattern on a given number of rows like this: (you may want to display this pattern in a fixed font for better legibility)

     P   A   H   N
     A P L S I I G
     Y   I   R
     And then read line by line: "PAHNAPLSIIGYIR"

     Write the code that will take a string and make this conversion given a number of rows:
     
    Example 1:
     Input: s = "PAYPALISHIRING", numRows = 4
     Output: "PINALSIGYAHRPI"
     Explanation:
     P     I    N
     A   L S  I G
     Y A   H R
     P     I
     */
    /// O(n)
    static func convert(_ s: String, _ numRows: Int) -> String {
        guard numRows > 1 && s.count > 2 else {
            return s
        }
        
        var resultArray = Array(repeating: "", count: min(numRows, s.count))
        var isGoungDown = false
        var curentIndex = 0
        
        for char in s {
            resultArray[curentIndex].append(char)
            if curentIndex == 0 || curentIndex == numRows - 1 {
                isGoungDown = !isGoungDown
            }
            
            curentIndex += isGoungDown ? 1 : -1
        }
        
        var result = ""
        for str in resultArray {
            result.append(str)
        }
        
        return result
    }
}

// Example usage:
let s = "PAYPALISHIRING"
let numRows = 3
print(Solution.convert(s, numRows) == "PAHNAPLSIIGYIR")
let s2 = "ABC"
let numRows2 = 1
print(Solution.convert(s2, numRows2) == "ABC")

