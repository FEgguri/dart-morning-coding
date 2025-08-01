import 'dart:math';

//  문제
// 정수 배열 nums와 정수 k가 주어질 때,
// nums에서 길이가 k인 연속 부분 배열의 평균값 중 최대값을 찾는 함수를 작성하세요.
// 답을 소수점 다섯 번째 자리까지 반올림하여 반환합니다.

// * 예시
// 1. 입력: nums = [1,12,-5,-6,50,3], k = 4 출력: 12.75000
// 	설명: [12, -5, -6, 50] 부분 배열의 평균값이 12.75로 최대입니다.

// 2. 입력: nums = [5], k = 1 출력: 5.00000
// 	설명: 배열 전체가 길이 1인 부분 배열이므로 그 평균값이 최대입

class Solution {
  double findMaxAverage(List<int> nums, int k) {
    int sum = 0;

    // 첫 번째 k개의 요소 합 계산

    // [1,12,-5,-6,50,3] , k = 4
    // [1,12,-5,-6]
    for (int i = 0; i < k; i++) {
      sum += nums[i];
    }
    // sum = 2

    int maxSum = sum;
    //  maxSum = 2

    // 슬라이딩 윈도우를 사용하여 최대 합 계산
    for (int i = k; i < nums.length; i++) {
      sum = sum - nums[i - k] + nums[i];
      maxSum = max(maxSum, sum);
    }

    // i : 4,

    // [1,12,-5,-6,50,3] -> [1,12,-5,-6]
    // [1,12,-5,-6,50,3] -> [1,12,-5,-6] -> [12,-5,-6] -> [12,-5,-6,50]
    // [1,12,-5,-6,50,3] -> [12,-5,-6,50]

    // sum = 2 - 1 + 50 == 51

    // maxSum = 51

    return maxSum / k;
  }
}

void main() {
  Solution solution = Solution();
  List<int> nums = [1, 12, -5, -6, 50, 3];
  int k = 4;
  print(solution.findMaxAverage(nums, k));
}
