//
//  SmallestIndexWithEqualValue.swift
//
//
//  Created by Mihail Boyko on 01/04/24.
//



class Solution {
    /**
     Given a 0-indexed integer array nums, return the smallest index i of nums such that i mod 10 == nums[i], or -1 if such index does not exist.

     x mod y denotes the remainder when x is divided by y.
     
    Example 1:
     Input: nums = [0,1,2]
     Output: 0
     Explanation:
     i=0: 0 mod 10 = 0 == nums[0].
     i=1: 1 mod 10 = 1 == nums[1].
     i=2: 2 mod 10 = 2 == nums[2].
     All indices have i mod 10 == nums[i], so we return the smallest index 0.
     
    Example 2:
     Input: nums = [4,3,2,1]
     Output: 2
     Explanation:
     i=0: 0 mod 10 = 0 != nums[0].
     i=1: 1 mod 10 = 1 != nums[1].
     i=2: 2 mod 10 = 2 == nums[2].
     i=3: 3 mod 10 = 3 != nums[3].
     2 is the only index which has i mod 10 == nums[i].
     */
    /// O(n)
    static func smallestEqual(_ nums: [Int]) -> Int {
        for (index, num) in nums.enumerated() {
            if num == index % 10 {
                return index
            }
        }
        
        return -1
    }
}

// Example usage:
let nums1 = [9,5,8,3,4,1,0,2,6,7,12,24,3]
let nums2 = [9,1,8,3,4,1,0,2,6,7,12,24,3]
let nums3 = [0,1,2]
let nums4 = [Int]()
let nums5 = [14,15]
print(Solution.smallestEqual(nums1) == 3) // Output: true
print(Solution.smallestEqual(nums2) == 1) // Output: true
print(Solution.smallestEqual(nums3) == 0) // Output: true
print(Solution.smallestEqual(nums4) == -1) // Output: true
print(Solution.smallestEqual(nums5) == -1) // Output: true

