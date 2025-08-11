// * 문제
// 주어진 문자열 s에서 모음(‘a’, ‘e’, ‘i’, ‘o’, ‘u’, 대소문자 구분 없음)들만 뒤집어서 문자열을 반환하세요.
// 다른 문자는 원래 위치에 그대로 남아 있어야 합니다.

// * 조건
// 1. s.length는 1 이상 3 * 10^5 이하입니다.
// 2. 문자열은 ASCII 문자로만 이루어져 있습니다.

// * 예시
// 1. 입력: s = "hello" 출력: "holle"
// 	설명: 'e'와 'o'가 뒤집혀서 'holle'이 됩니다.

// 2. 입력: s = "leetcode" 출력: "leotcede"
// 	설명: 'e', 'o', 'e'가 뒤집혀서 'leotcede'가 됩니다.
class Solution {
  String reverseVowels(String s) {
    final vowels = {'a', 'e', 'i', 'o', 'u'};
    final chars = s.split('');
    int left = 0, right = chars.length - 1;

    while (left < right) {
      while (left < right && !vowels.contains(chars[left].toLowerCase())) {
        left++;
      }
      while (left < right && !vowels.contains(chars[right].toLowerCase())) {
        right--;
      }
      if (left < right) {
        final temp = chars[left];
        chars[left] = chars[right];
        chars[right] = temp;
        left++;
        right--;
      }
    }

    return chars.join('');
  }
}

void main() {
  Solution solution = Solution();
  String s = "leetcode";
  print(solution.reverseVowels(s));
}
