int stringIndex(String haystack, String needle) {
  final hayList = haystack.split('');
  final needleList = needle.split('');
  //print('${hayList.length} ${needleList.length}');

  //if (needleList.isEmpty) return 0;
  if (needleList.length > hayList.length) return -1;

  //heylist 한글자당 needlelist전체 루프

  for (int i = 0; i <= hayList.length - needleList.length; i++) {
    // 루프
    bool match = true;
    for (int j = 0; j < needleList.length; j++) {
      //3 루프
      if (hayList[i + j] != needleList[j]) {
        match = false; //needleList를 다 돌렷는데 없으면 false
        break;
      }
    }
    if (match) return i; //맞으면 index반환
  }
  return -1; //없으면 -1
}

void main() {
  String haystack = "catcatsadutsac";
  String needle = "sad";
  print(stringIndex(haystack, needle));
}
