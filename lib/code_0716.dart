int pivotIndex(List<int> nums) {
  int totalSum = nums.fold(0, (prev, element) => prev + element); // 전체 합
  int leftSum = 0;

  for (int i = 0; i < nums.length; i++) {
    int rightSum = totalSum - leftSum - nums[i];
    if (leftSum == rightSum) {
      return i; // 피벗 인덱스 발견
    }
    leftSum += nums[i]; // 왼쪽 합 갱신
  }
  return -1;
}

void main() {
  List<int> nums = [1, 7, 3, 6, 5, 6];
  print(pivotIndex(nums));
}
