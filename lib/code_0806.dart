// * 문제
// 두 개의 문자열 s와 t가 주어졌을 때,
// 문자열 s가 t의 부분 수열인지 확인하는 함수를 작성하세요.
// 부분 수열이란 문자열에서 일부 문자를 제거하고 나머지 문자의 상대적인 순서를 유지하여
// 만들 수 있는 문자열을 의미합니다.

// * 조건
// 1. 0 <= s.length <= 100
// 2. 0 <= t.length <= 10^4
// 3. 문자열 s와 t는 모두 소문자로 구성됩니다.

// * 예시
// 1. 입력: s = "abc", t = "ahbgdc" 출력: true
// 	설명: s는 t에서 a -> b -> c 순서로 존재하므로 부분 수열입니다.

// 2. 입력: s = "axc", t = "ahbgdc" 출력: false
// 	설명: t에는 a -> x -> c 순서로 존재하지 않으므로 부분 수열이 아닙니다.
// * 문제
// 정렬된 고유한 정수 배열 nums가 주어졌을 때, 연속된 숫자들을 하나의 범위로 묶어 문자열 형태로 반환하세요.
// 각 범위는 "a->b"의 형식이며, 숫자가 하나만 포함될 경우 해당 숫자 "a"를 반환합니다.

// * 조건
// 0 <= nums.length <= 20
// -2^31 <= nums[i] <= 2^31 - 1
// 모든 nums의 원소는 고유하며, 오름차순으로 정렬되어 있습니다.

// * 예시
// 예제 1
// 	입력: nums = [0, 1, 2, 4, 5, 7]
// 	출력: ["0->2", "4->5", "7"]
// 	설명:
// 		0, 1, 2는 연속적이므로 "0->2"로 묶입니다.
// 		4, 5는 연속적이므로 "4->5"로 묶입니다.
// 		7은 혼자이므로 "7"로 나타냅니다.

// 예제 2:
// 	입력: nums = [0, 2, 3, 4, 6, 8, 9]
// 	출력: ["0", "2->4", "6", "8->9"]
// 	설명:
// 		2, 3, 4는 연속적이므로 "2->4"로 묶입니다.
// 		8, 9는 연속적이므로 "8->9"로 묶입니다.

// 예제 3:
// 	입력: nums = []
// 	출력: []
// 	설명: 배열이 비어 있으므로 빈 배열을 반환합니다.
void main() {
  Solution solution = Solution();
  print(solution.isSubsequence("abc", "ahbgdc")); // true
  print(solution.isSubsequence("axc", "ahbgdc")); // false
  print(solution.isSubsequence("", "ahbgdc")); // true (빈 문자열은 항상 부분 수열)
  print(solution.isSubsequence("abc", "")); // false
}

class Solution {
  bool isSubsequence(String s, String t) {
    int i = 0; // s의 포인터`
    int j = 0; // t의 포인터

    while (i < s.length && j < t.length) {
      if (s[i] == t[j]) {
        i++; // s의 현재 문자를 찾았으니 다음 문자로
      }
      j++; // t는 무조건 한 글자씩 진행
    }

    return i == s.length;
  }
}
