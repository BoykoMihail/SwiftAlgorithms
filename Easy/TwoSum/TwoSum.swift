//
//  TwoSum.swift
//  
//
//  Created by Mihail Boyko on 2/23/24.
//

class Solution {
    /**
    Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
    You may assume that each input would have exactly one solution, and you may not use the same element twice.
    You can return the answer in any order.
     
    Example 1:
    Input: nums = [2,7,11,15], target = 9
    Output: [0,1]
    Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
     */
    /// O(n)
    static func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var indices = [Int: Int]()
        
        for (index, num) in nums.enumerated() {
            let complement = target - num
            if let complementIndex = indices[complement] {
                return [complementIndex, index]
            }
            indices[num] = index
        }
        
        return []
    }
}

let nums = [2, 7, 11, 15]
let target = 9
let result = Solution.twoSum(nums, target)
print("Result = ", result)

