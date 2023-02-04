class Solution {
  List<int> twoSum(List<int> nums, int target) {
      final Map<int, int> matchingNums = {};
      int index = 0;
      
      do {
          final int candidate = nums[index];
          bool hasMatch = matchingNums.containsKey(target-candidate);
          switch (hasMatch){
              case true:
                  return [matchingNums[target-candidate]!, index];
                  break;
              case false:
                  matchingNums[candidate]=index;
                  index++;
                  break;      
          } 
      } while (index<nums.length);
      return [];
  }
}
