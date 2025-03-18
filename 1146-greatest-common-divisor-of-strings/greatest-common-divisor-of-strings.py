import math

class Solution:
    def gcdOfStrings(self, str1: str, str2: str) -> str:
        # Check if the two strings can form each other when concatenated in different orders
        if str1 + str2 != str2 + str1:
            return ""
        
        # Calculate the GCD of the lengths of the two strings
        gcd_length = math.gcd(len(str1), len(str2))
        
        # Return the substring of length equal to the GCD
        return str1[:gcd_length]