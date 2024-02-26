//
//  MedianofTwoSortedArrays.swift
//
//
//  Created by Mihail Boyko on 2/23/24.
//

class Solution {
    /**
     Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.

     The overall run time complexity should be O(log (m+n)).
     
    Example 1:
     Input: nums1 = [1,2], nums2 = [3,4]
     Output: 2.50000
     Explanation: merged array = [1,2,3,4] and median is (2 + 3) / 2 = 2.5.
     */
    /// O(log(min(n, m))))
    static func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let nums1Len = nums1.count
        let nums2Len = nums2.count

        if nums1Len > nums2Len {
            return findMedianSortedArrays(nums2, nums1)
        }

        var l = 0
        var r = nums1Len
        let middleOfTheTotal = (nums1Len + nums2Len + 1) / 2

        while l <= r {
            let miidleOfTheNum1 = (r + l) / 2
            let middLenOfTheNum2 = middleOfTheTotal - miidleOfTheNum1

            let maxNum1Left = (miidleOfTheNum1 == 0) ? Int.min : nums1[miidleOfTheNum1 - 1]
            let minNum1Right = (miidleOfTheNum1 == nums1Len) ? Int.max : nums1[miidleOfTheNum1]

            let maxNum2Left = (middLenOfTheNum2 == 0) ? Int.min : nums2[middLenOfTheNum2 - 1]

            let minNum2Right = (middLenOfTheNum2 == nums2Len) ? Int.max : nums2[middLenOfTheNum2]

            if maxNum1Left <= minNum2Right && maxNum2Left <= minNum1Right {
                if (nums1Len + nums2Len) % 2 == 1 {
                    return Double(max(maxNum1Left, maxNum2Left))
                } else {
                    return Double((min(minNum2Right, minNum1Right) + max(maxNum1Left, maxNum2Left))) / 2.0
                }
            } else if maxNum1Left > minNum2Right {
                r = miidleOfTheNum1 - 1
            } else {
                l = miidleOfTheNum1 + 1
            }
        }

        return 0.0
    }
}

// Example usage:
let nums1 = [1, 3, 4]
let nums2 = [2]
let median = Solution.findMedianSortedArrays(nums1, nums2)
print("Median: \(median)")
