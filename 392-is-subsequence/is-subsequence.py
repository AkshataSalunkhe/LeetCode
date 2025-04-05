class Solution:
    def isSubsequence(self, s: str, t: str) -> bool:
        s_list = list(s)
        t_list =list(t)
        k=0
        if len(s_list) > 0  and len(t_list) == 0:
            return False
        elif len(s_list) == 0  and len(t_list) == 0:
            return True 
        else:  
            count = 0 
            for i in range (len(s_list)):
                l_list = t_list[k:]
                for j in range (k,len(t_list)):
                    if s_list[i] == t_list[j]:
                        k = j+1
                        count+=1
                        break
            if count == len(s_list):
                return True
            else:
                return False 
            
            