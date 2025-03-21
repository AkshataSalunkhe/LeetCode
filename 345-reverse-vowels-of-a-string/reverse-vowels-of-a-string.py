class Solution:
    

    def reverseVowels(self, s: str) -> str:

        def is_vowel(char): 
            if re.match(r'[aeiouAEIOU]', char): 
                return True
            return False

        
        vowel_list = []
        slist = list(s)
        for i in (slist):
            if is_vowel(i):
                vowel_list.append(i)
        i = 0
        j = len(vowel_list)-1
        while i<len(slist):
            if is_vowel(slist[i]):
                slist[i] = vowel_list[j]
                j-=1
            i+=1
        s = ''.join(slist)
        return s 