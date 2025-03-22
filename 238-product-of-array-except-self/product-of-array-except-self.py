class Solution:
    def productExceptSelf(self, nums: List[int]) -> List[int]:
        num1 = nums.copy()
        res = []
        if 0 in nums and nums.count(0)==1:
            num1.remove(0)
            prod0 = math.prod(num1)
            print(prod0)
            for i in nums:
                if i != 0:
                    res.append(0)
                else:
                    res.append(prod0)
        else: 
            prod = math.prod(nums)
            for i in nums:
                if i != 0:
                    res.append(int(prod / i))
                elif i == 0: 
                    res.append(prod)
        return res

