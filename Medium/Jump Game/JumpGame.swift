//
//  JumpGame.swift
//
//
//  Created by Mihail Boyko on 6/05/24.
//




class Solution {
    /**
     You are given an integer array nums. You are initially positioned at the array's first index, and each element in the array represents your maximum jump length at that position.

     Return true if you can reach the last index, or false otherwise.
     
    Example 1:
     Input: nums = [2,3,1,1,4]
     Output: true
     Explanation: Jump 1 step from index 0 to 1, then 3 steps to the last index.
     
    Example 2:
     Input: nums = [3,2,1,0,4]
     Output: false
     Explanation: You will always arrive at index 3 no matter what. Its maximum jump length is 0, which makes it impossible to reach the last index.
     */
    /// O(n)
    static func canJump(_ nums: [Int]) -> Bool {
        var goal = nums.count - 1
        
        for i in (0...nums.count-1).reversed() {
            if i + nums[i] >= goal {
                goal = i
            }
        }
        
        return goal == 0
    }
}

// Example usage:
var nums = [2,3,1,1,4]
print(Solution.canJump(nums))

var nums2 = [3,2,1,0,4]
print(Solution.canJump(nums2))

var nums4 = [1]
print(Solution.canJump(nums4))
