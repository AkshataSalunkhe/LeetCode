class Solution:
    def mergeAlternately(self, word1: str, word2: str) -> str:
        result = ""
        high = max(len(word1), len(word2))
        low= min(len(word1), len(word2))
        if len(word1) ==high: 
            highstr = word1
        else: 
            highstr =word2

        for i in range(low):
            result+=word1[i]+word2[i]
        result+=highstr[low:high]
        return result