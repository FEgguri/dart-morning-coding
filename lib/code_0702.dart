/* 문제
주어진 문자열에서 마지막 단어의 길이를 구하는 문제입니다.
단어는 공백으로 구분되며, 마지막 단어 뒤에는 공백이 없고, 앞에만 있을 수 있습니다.

* 조건
1. 1 <= s.length <= 10^4
2. s는 영어 알파벳과 공백으로만 구성됩니다.

* 예시
예제 1
	입력: "Hello World"
	출력: 5
	설명: "World"는 길이가 5입니다.

예제 2
	입력: " fly me to the moon "
	출력: 4
	설명: "moon"의 길이는 4입니다.*/

import 'dart:io';

class Solution {
  String? lastWord(String s) {
    List<String> words = s.trim().split(' ');
    words.removeWhere((word) => word.isEmpty);
    return words.isNotEmpty ? words.last : null;
  }

  int lengthOfLastWord(String s) {
    final word = lastWord(s);
    return word?.length ?? 0;
  }
}

void main() {
  stdout.write('문자열을 입력하세요: ');
  String? input = stdin.readLineSync();

  if (input == null || input.trim().isEmpty) {
    print('값이 없습니다');
    return;
  }

  var solution = Solution();
  String? last = solution.lastWord(input);
  int length = solution.lengthOfLastWord(input);

  if (last != null) {
    print('"$last"의 길이는 $length');
  } else {
    print('마지막 단어가 없습니다');
  }
}
