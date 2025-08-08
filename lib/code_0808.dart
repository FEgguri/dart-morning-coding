// * 문제
// 정수 배열 nums와 정수 k가 주어질 때, 같은 값을 가지는 두 인덱스 i와 j에 대해
// abs(i - j) <= k를 만족하는 경우가 있는지 확인하세요.
// 만약 조건을 만족하는 인덱스 쌍이 있다면 true를 반환하고, 그렇지 않으면 false를 반환하세요.

// abs() <- 숫자의 절대값을 반환하는 함수

// * 조건
// 1 <= nums.length <= 10^5
// -10^9 <= nums[i] <= 10^9
// 0 <= k <= 10^5

// * 예시
// 예제 1
// 	입력: nums = [1, 2, 3, 1] k = 3
// 	출력: true
// 	설명: nums[0]와 nums[3]의 값이 동일하며, abs(0 - 3) = 3으로 조건을 만족합니다.

// 예제 2:
// 	입력: nums = [1, 0, 1, 1] k = 1
// 	출력: true
// 	설명: nums[2]와 nums[3]의 값이 동일하며, abs(2 - 3) = 1로 조건을 만족합니다.

// 예제 3:
// 	입력: nums = [1, 2, 3, 1, 2, 3] k = 2
// 	출력: false
// 	설명: 중복 값들은 존재하지만, 조건 abs(i - j) <= 2를 만족하는 쌍이 없습니다.
bool containsNearbyDuplicate(List<int> nums, int k) {
  final Map<int, int> indexMap = {}; // 값 -> 마지막 인덱스 기록

  for (int i = 0; i < nums.length; i++) {
    int num = nums[i];

    if (indexMap.containsKey(num)) {
      int prevIndex = indexMap[num]!;
      if ((i - prevIndex).abs() <= k) {
        return true;
      }
    }

    indexMap[num] = i; // 현재 인덱스로 갱신
  }

  return false;
}

void main() {
  print(containsNearbyDuplicate([1, 2, 3, 1], 3)); // true
  print(containsNearbyDuplicate([1, 0, 1, 1], 1)); // true
  print(containsNearbyDuplicate([1, 2, 3, 1, 2, 3], 2)); // false
}
