//
//  MajorityElement.swift
//
//
//  Created by Mihail Boyko on 11/04/24.
//



class Solution {
    /**
     Given an array nums of size n, return the majority element.

     The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.

     Follow-up: Could you solve the problem in linear time and in O(1) space?
     
    Example 1:
     Input: nums = [3,2,3]
     Output: 3
     
    Example 2:
     Input: nums = [2,2,1,1,1,2,2]
     Output: 2
     */
    /// O(n)
    static func majorityElement(_ nums: [Int]) -> Int {
        guard nums.count > 1 else { return nums.first ?? 0 }
        
        var count = 0
        var result = nums[0]
        
        for i in 1...nums.count-1 {
            if result == nums[i] {
                count += 1
            } else {
                count -= 1
            }

            if count < 0 {
                result = nums[i]
                count = 0
            }
        }
        
        return result
    }
}

// Example usage:
let nums = [3,2,3]
print(Solution.majorityElement(nums) == 3) // Output: 3
let nums2 = [2,2,1,1,1,2,2]
print(Solution.majorityElement(nums2) == 2) // Output: 2
let nums3 = [1]
print(Solution.majorityElement(nums3) == 1) // Output: 1
let nums4 = [3,3,4]
print(Solution.majorityElement(nums4) == 3) // Output: 3
