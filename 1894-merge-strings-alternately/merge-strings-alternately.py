class Solution:
    def mergeAlternately(self, word1: str, word2: str) -> str:
        '''Solution1 :

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
        '''

        #Solution2 :
        merged = []
        length = min (len(word1), len(word2))
        for i in range (0, length):
            merged.append(word1[i])
            merged.append(word2[i])
        merged.extend(word1[length:])
        merged.extend(word2[length:])
        delimiter_space = "" 
        merged1 = (delimiter_space.join(merged))
        return merged1