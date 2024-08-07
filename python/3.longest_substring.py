import datetime
# import operator as op

class Solution(object):

    def hasUniqueChar(self,s:str) ->bool:
        unique=set(s)
        return  len(unique) == len(s)
    
#brute force
    # def lengthOfLongestSubstring(self, s: str) -> int:
    #     length=len(s)
    #     if length ==1:
    #         return 1
    #     if length == 0:
    #         return 0
    #     max_length :int =0
    #     for i in range(length):
    #         for j in range(i,length):
    #             sub_string =s[i:j+1]

    #             if self.hasUniqueChar(sub_string):
    #                 max_length= max(max_length,len(sub_string))
    #     return max_length 
    
#sliding window
    def lengthOfLongestSubstring(self, s: str) -> int:
        s_length=len(s)
        max_length=0
        start =0
        end=0
        sub_set= set({})
        while end < s_length:
            if s[end] not in sub_set:
                sub_set.add(s[end])
                max_length=max(max_length,end-start+1)
                end+=1
                print(f"not in -> {sub_set}")
            else:
                sub_set.remove(s[start])
                start+=1
                print(f"in -> {sub_set}")

        return max_length



solution=Solution()
#print(datetime.datetime.now())
print(solution.lengthOfLongestSubstring("pwwkew"))
#print(datetime.datetime.now())


        