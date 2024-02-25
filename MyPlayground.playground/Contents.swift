class Solution {
    static func lengthOfLongestSubstring(_ s: String) -> Int {
        var maxlength = 0
        var charIndexMap = [Character: Int]()
        var startIndex = 0
        
        for (index, char) in s.enumerated() {
            if let prevIndex = charIndexMap[char], prevIndex >= startIndex {
                startIndex = prevIndex + 1
            }
            
            maxlength = max(maxlength, index - startIndex + 1)
            charIndexMap[char] = index
        }
        
        return maxlength
    }
}
