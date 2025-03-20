class Solution:
    def canPlaceFlowers(self, flowerbed: List[int], n: int) -> bool:
        count =0 
        left = False 
        right = False
        if n==0:
            return True
     
        for i in range(len(flowerbed)):
            if flowerbed[i]==0:
                left = (i == 0) or (flowerbed[i - 1] == 0)
                right = (i == len(flowerbed) - 1) or (flowerbed[i + 1] == 0)
            print(left)
            if left == True and right == True:
                flowerbed[i]=1
                count+=1
                if count==n:
                    return True

        return False
    

        
        
        
        
        
        
        
        
        
        
        
        
        
        '''for i in range(0, len(flowerbed)-3, 1):
            if flowerbed[i] == 1 and flowerbed [i+1] == 0 and flowerbed[i+2] ==0 and flowerbed[i+3] == 0:
                flowerbed[i+2] = 1
                n=n-1
        if n==0:
            return True
        else:
            return False'''

