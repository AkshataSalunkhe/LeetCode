class Solution:
    def moveZeroes(self, nums: List[int]) -> None:
        for i in range (0, len(nums)-1):
            if nums[i] == 0:
                for j in range(i+1, len(nums)):
                    if nums[j]!=0:
                        k = nums[j]
                        nums[j] = nums[i]
                        nums[i]=k
                        break
                    
 

        
        