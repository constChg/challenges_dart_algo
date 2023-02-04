class Solution {
  int search(List<int> nums, int target) {
    int topIndex = nums.length - 1;
    int lowIndex = 0;

    do {
      int midIndex = ((topIndex + lowIndex) / 2).truncate();
      bool isUpper = target > nums[midIndex];
      print(midIndex);
      if (target == nums[midIndex]) {
        return midIndex;
      }
      ;
      if (target > nums[midIndex]) {
        lowIndex = midIndex;
        if (target == [topIndex]) {
          return topIndex;
        }
        ;
      }
      ;
      if (target < nums[midIndex]) {
        topIndex = midIndex;
        if (target == nums[lowIndex]) {
          return lowIndex;
        }
        ;
      }
      ;
    } while ((topIndex - lowIndex) > 1);

    return -1;
  }
}
