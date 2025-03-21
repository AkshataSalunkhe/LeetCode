class Solution:
    def reverseWords(self, s: str) -> str:
        slist = s.split()
        slist.reverse()
        return(" ".join(slist))