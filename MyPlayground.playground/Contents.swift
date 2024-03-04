
class Solution {
    /**
     Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.

     Assume the environment does not allow you to store 64-bit integers (signed or unsigned).
     
    Example 1:
     Input: x = 123
     Output: 321
     
    Example 2:
     Input: x = -123
     Output: -321
     */
    /// O(log(x))
    static func reverse(_ x: Int) -> Int {
        var num = x
        var reverstNum = 0
        
        while num != 0 {
            let digit = num % 10
            num /= 10
            
            if reverstNum > Int32.max / 10 || (reverstNum == Int32.max / 10 && digit > 7) {
                return 0
            }
            
            if reverstNum < Int32.min / 10 || (reverstNum == Int32.min / 10 && digit < -8) {
                return 0
            }
            
            reverstNum = reverstNum*10 + digit
        }
        
        return reverstNum
    }
}

// Example usage:
print(Solution.reverse(123) == 321)
print(Solution.reverse(-845) == -548)

