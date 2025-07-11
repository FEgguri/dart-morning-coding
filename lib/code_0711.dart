class Solution {
  String strList(List<String> strs) {
    if (strs.isEmpty) return '';

    // 첫 번째 단어를 기준으로 공통 접두사 추출 시작
    String prefix = strs[0];

    for (int i = 1; i < strs.length; i++) {
      // 현재 prefix가 strs[i]의 시작 부분인지 확인
      while (!strs[i].startsWith(prefix)) {
        // 접두사가 아니면 마지막 글자씩 제거
        prefix = prefix.substring(0, prefix.length - 1);
        if (prefix.isEmpty) return '';
      }
    }
    return prefix;
  }
}

void main() {
  var solution = Solution();
  List<String> strs = ["flower", "flow", "flight"];
  print(solution.strList(strs)); // 출력: fl
}
