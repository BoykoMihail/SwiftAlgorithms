//
//  BestTimeToBuyAndSellStockII.swift
//
//
//  Created by Mihail Boyko on 6/05/24.
//



class Solution {
    /**
     You are given an integer array prices where prices[i] is the price of a given stock on the ith day.

     On each day, you may decide to buy and/or sell the stock. You can only hold at most one share of the stock at any time. However, you can buy it then immediately sell it on the same day.

     Find and return the maximum profit you can achieve.
     
    Example 1:
     Input: prices = [7,1,5,3,6,4]
     Output: 7
     Explanation: Buy on day 2 (price = 1) and sell on day 3 (price = 5), profit = 5-1 = 4.
     Then buy on day 4 (price = 3) and sell on day 5 (price = 6), profit = 6-3 = 3.
     Total profit is 4 + 3 = 7.
     
    Example 2:
     Input: prices = [1,2,3,4,5]
     Output: 4
     Explanation: Buy on day 1 (price = 1) and sell on day 5 (price = 5), profit = 5-1 = 4.
     Total profit is 4.
     */
    /// O(n)
    static func maxProfit(_ prices: [Int]) -> Int {
        
        guard prices.count > 1 else {
            return 0
        }
        
        var profit = 0
        
        for i in 1...prices.count-1 {
            if prices[i] > prices[i - 1] {
                profit +=  prices[i] - prices[i - 1]
            }
        }

        return profit
    }
}

// Example usage:
var nums = [7,1,5,3,6,4]
print(Solution.maxProfit(nums)) //== 7)  // Output: 7

var nums2 = [1,2,3,4,5]
print(Solution.maxProfit(nums2))//== 4) // Output: 4

var nums3 = [7,6,4,3,1]
print(Solution.maxProfit(nums3))// == 0) // Output: 0

var nums4 = [1]
print(Solution.maxProfit(nums4))// == 0) // Output: 0
