class Solution {
  // 리스트에 있는 문자열들의 공통 접두사를 찾아 반환하는 함수
  String strList(List<String> strs) {
    // 리스트가 비어있으면 빈 문자열 반환
    if (strs.isEmpty) return '';

    // 첫 번째 문자열을 기준 접두사로 초기화
    String prefix = strs[0];

    // 두 번째 문자열부터 마지막 문자열까지 반복
    for (int i = 1; i < strs.length; i++) {
      // 현재 prefix가 strs[i]의 시작부분인지 검사
      while (!strs[i].startsWith(prefix)) {
        // prefix가 현재 문자열의 접두사가 아니면
        // prefix의 마지막 글자를 하나씩 잘라서 다시 검사
        prefix = prefix.substring(0, prefix.length - 1);
        // prefix가 빈 문자열이 되면 공통 접두사가 없으므로 빈 문자열 반환
        if (prefix.isEmpty) return '';
      }
      // while문을 빠져나오면 strs[i]의 접두사에 맞춰 prefix가 줄어든 상태임
    }
    // 모든 문자열을 검사하고 남은 prefix가 공통 접두사
    return prefix;
  }
}

void main() {
  var solution = Solution();
  List<String> strs = ["flower", "flow", "flight"];
  print(solution.strList(strs)); // 출력: fl
}
