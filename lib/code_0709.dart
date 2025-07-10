class Solution {
  int majority(List<int> nums) {
    int candidate = nums[0];
    int count = 1;

    for (int i = 1; i < nums.length; i++) {
      if (nums[i] == candidate) {
        count++;
      } else if (nums[i] != candidate) {
        count--;
        if (count == 0) {
          //과반이 아니면 후보자 재설정
          candidate = nums[i];
          count = 1;
        }
      }
      //candidate = nums[i];
      //print('candidate: $candidate, count: $count');
    }
    return candidate;
  }
}

void main() {
  List<int> nums = [2, 2, 1, 1, 1, 2, 3, 2, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4];
  var soultion = Solution();
  print(soultion.majority(nums));
}
