//
//  RotateArray.swift
//
//
//  Created by Mihail Boyko on 24/04/24.
//

class Solution {
    /**
     Given an integer array nums, rotate the array to the right by k steps, where k is non-negative.
     
    Example 1:
     Input: nums = [1,2,3,4,5,6,7], k = 3
     Output: [5,6,7,1,2,3,4]
     Explanation:
     rotate 1 steps to the right: [7,1,2,3,4,5,6]
     rotate 2 steps to the right: [6,7,1,2,3,4,5]
     rotate 3 steps to the right: [5,6,7,1,2,3,4]
     
    Example 2:
     Input: nums = [-1,-100,3,99], k = 2
     Output: [3,99,-1,-100]
     Explanation:
     rotate 1 steps to the right: [99,-1,-100,3]
     rotate 2 steps to the right: [3,99,-1,-100]
     */
    /// O(n)
    static func rotate(_ nums: inout [Int], _ k: Int) {
        reverse(&nums, 0, nums.count - 1)
        reverse(&nums, 0, (k % nums.count) - 1)
        reverse(&nums, (k % nums.count), nums.count - 1)
    }
    
    static func reverse(_ nums: inout [Int], _ start: Int, _ end: Int) {
        var l = start
        var r = end
        while l < r {
            let temp = nums[l]
            nums[l] = nums[r]
            nums[r] = temp
            l += 1
            r -= 1
        }
    }
}

// Example usage:
var nums = [1,2,3,4,5,6,7]
print(Solution.rotate(&nums, 3))
print(nums == [5,6,7,1,2,3,4]) // Output: [5,6,7,1,2,3,4]

var nums2 = [-1,-100,3,99]
print(Solution.rotate(&nums2, 2))
print(nums2 == [3,99,-1,-100]) // Output: [3,99,-1,-100]


