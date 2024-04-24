//
//  BestTimeToBuyAndSellStock.swift
//
//
//  Created by Mihail Boyko on 25/04/24.
//



class Solution {
    /**
     You are given an array prices where prices[i] is the price of a given stock on the ith day.

     You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

     Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.
     
    Example 1:
     Input: prices = [7,1,5,3,6,4]
     Output: 5
     Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
     Note that buying on day 2 and selling on day 1 is not allowed because you must buy before you sell.
     
    Example 2:
     Input: prices = [7,6,4,3,1]
     Output: 0
     Explanation: In this case, no transactions are done and the max profit = 0.
     */
    /// O(n)
    static func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count > 1 else { return 0}
        
        var l = 0
        var r = 1
        var max = 0
        while r < prices.count {
            if prices[l] < prices[r] {
                max = prices[r] - prices[l] > max ? prices[r] - prices[l] : max
            } else {
                l = r
            }
            r += 1
        }
        
        return max
    }
}

// Example usage:
var nums = [7,1,5,3,6,4]
print(Solution.maxProfit(nums) == 5)  // Output: 5

var nums2 = [7,6,4,3,1]
print(Solution.maxProfit(nums2) == 0) // Output: 0
