class Solution {
  int singleNumber(List<int> nums) {
    int result = 0;
    for (int num in nums) {
      print('$num + $nums');
      result ^= num; // XOR 연산
    }
    return result;
  }
}

void main() {
  var soultion = Solution();
  List<int> nums = [4, 1, 2, 1, 2, 4, 7];
  print(soultion.singleNumber(nums));
}
