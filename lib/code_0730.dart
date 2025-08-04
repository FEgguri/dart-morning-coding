import 'dart:collection';

class Solution {
  void rotate(List<int> nums, int k) {
    int lastnum;
    Queue<int> temp = DoubleLinkedQueue<int>.from(nums);

    //입력된 k 횟수만큼 nums의 마지막 배열을 첫번째로 이동
    //for
    for (int i = 0; i < k; i++) {
      //마지막 배열 변수에 저장
      lastnum = temp.last;
      //Queue로 변환해서 마지막 배열을 제거 , 첫번째로 삽입
      temp.addFirst(lastnum);
      temp.removeLast();
      //print(temp);
      nums.clear();
      nums.addAll(temp.toList());
      //  nums = temp.toList();
    }
    //return nums;
  }
}
// * 문제
// 주어진 정수 배열 nums를 오른쪽으로 k번 회전시키는 문제입니다.
// 회전은 배열의 마지막 요소를 배열의 처음으로 이동시키는 것을 의미합니다.

// * 조건
// 1. 1 <= nums.length <= 10^5
// 2. -2^31 <= nums[i] <= 2^31 - 1
// 3. 0 <= k <= 10^5

// * 예시
// 예제 1
// 	입력: nums = [1,2,3,4,5,6,7], k = 3
// 	출력: [5,6,7,1,2,3,4]
// 	설명: 오른쪽으로 3번 회전하면 마지막 3개 요소 [5,6,7]가 배열의 앞부분으로 이동하게 됩니다.

// 예제 2
// 	입력: nums = [-1,-100,3,99], k = 2
// 	출력: [3,99,-1,-100]
// 	설명: 오른쪽으로 2번 회전하면 마지막 2개 요소 [3,99]가 배열의 앞부분으로 이동하게 됩니다.
void main() {
  Solution solution = Solution();
  List<int> nums = [-1, -100, 3, 99];
  int k = 2;
  solution.rotate(nums, k);
}
