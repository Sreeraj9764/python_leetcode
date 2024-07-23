class Solution(object):
    def twoSum(self,nums, target):
        seen = {}
        for i in range(len(nums)):
            compliment=target-nums[i]
            if compliment in seen:
                return [seen[compliment],i]
            seen[nums[i]]=i


solution =Solution()
indices:list =solution.twoSum(nums=[2,7,11,15],target=9)
print(indices)