class Solution {
  bool isPalindrome(String s) {
    bool result = true;
    //s.split(" ");
    //List<String> parts = s.split(RegExp(r'[^a-zA-Z0-9]+'));
    List<String> parts = s.toLowerCase().split('').where((e) {
      return RegExp(r'[a-zA-Z0-9]').hasMatch(e);
    }).toList();
    // print(parts);

    //정방향 역순 비교
    for (int i = 0; i < parts.length; i++) {
      // print(parts.length);
      // print(parts[i]);
      //print(parts[i] == parts[parts.length - 1 - i]);
      if (parts[i] != parts[parts.length - 1 - i]) return result = false;
    }
    return result;
  }
}

void main() {
  Solution solution = Solution();
  String k = "A man, a plan, a canal: Panama";
  print(solution.isPalindrome(k));
}
