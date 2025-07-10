class Solution {
  int removeDuplicates(List<int> nums) {
    if (nums.isEmpty) return 0;

    int i = 0; // 고유 값이 들어갈 위치

    for (int j = 1; j < nums.length; j++) {
      if (nums[j] != nums[i]) {
        i++;
        nums[i] = nums[j]; // 새로운 고유 값을 다음 위치에 저장
      }
    }

    return i + 1; // 유효한 길이
  }
}

void main() {
  var solution = Solution();
  List<int> nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4];
  int len = solution.removeDuplicates(nums);
  print('유효한 길이: $len'); // 5
  print('중복 제거된 배열: ${nums.sublist(0, len)}'); // [0, 1, 2, 3, 4]
}
