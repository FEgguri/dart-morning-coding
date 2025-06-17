class Solution {
  List<String> findTheDifference(String s, String t) {
    //반환타입을 List<String>으로 변경
    // 문자열을 문자 리스트로 변환
    List<String> sList = s.split('');
    List<String> tList = t.split('');

    for (String char in sList) {
      //sList의 각 문자를 꺼내면서 char에 입력

      tList.remove(char); //tlist에 있는 char을 제거함
    }

    return tList;
  }
}

void main() {
  print(Solution().findTheDifference("d", "abcdy"));
}
