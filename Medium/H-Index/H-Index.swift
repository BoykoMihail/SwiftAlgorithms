//
//  H-Index.swift
//
//
//  Created by Mihail Boyko on 08/05/24.
//


class Solution {
    /**
     Given an array of integers citations where citations[i] is the number of citations a researcher received for their ith paper, return the researcher's h-index.

     According to the definition of h-index on Wikipedia: The h-index is defined as the maximum value of h such that the given researcher has published at least h papers that have each been cited at least h times.
     
    Example 1:
     Input: citations = [3,0,6,1,5]
     Output: 3
     Explanation: [3,0,6,1,5] means the researcher has 5 papers in total and each of them had received 3, 0, 6, 1, 5 citations respectively.
     Since the researcher has 3 papers with at least 3 citations each and the remaining two with no more than 3 citations each, their h-index is 3.
     
    Example 2:
     Input: citations = [1,3,1]
     Output: 1
     */
    /// O(n)
    static func hIndex(_ citations: [Int]) -> Int {
        if citations.isEmpty { return 0 }
        if citations.count == 1 { return citations[0] > 0 ? 1 : 0 }
        
        let length = citations.count
        
        var tmp = Array(repeating: 0, count: length + 1)
        for (_, item) in citations.enumerated() {
            if item > length {
                tmp[length] += 1
            } else {
                tmp[item] += 1
            }
        }
        var total = 0
        for i in (0...tmp.count-1).reversed() {
            total += tmp[i]
            if total >= i { return i }
        }
        
        return total
    }
}

// Example usage:
var nums = [3,0,6,1,5]
print(Solution.hIndex(nums)) // Output: 3

var nums2 = [1,3,1]
print(Solution.hIndex(nums2)) // Output: 1

var nums4 = [1]
print(Solution.hIndex(nums4)) // Output: 1

var nums5 = [0,0]
print(Solution.hIndex(nums5)) // Output: 0
