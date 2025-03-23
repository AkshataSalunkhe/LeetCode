class Solution:
    def increasingTriplet(self, nums: List[int]) -> bool:
        n1=nums[0]
        n2=max(nums)
        for n in nums:
            if n>n2>n1:
                return True 
            if n <= n1:
                n1 = n
            elif n < n2:
                n2 = n
        return False 
            
            