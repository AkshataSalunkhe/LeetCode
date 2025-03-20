class Solution:
    def kidsWithCandies(self, candies: List[int], extraCandies: int) -> List[bool]:
        grt_candies = max(candies)
        result = []
        for i in candies:
            if i + extraCandies >= grt_candies:
                result.append(True)
            else:
                result.append(False)
        return result
