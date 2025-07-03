class Solution {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) {
      return false;
    }
    List<String> sortedS = s.split('')..sort();
    List<String> sortedT = t.split('')..sort();

    return sortedS.join() == sortedT.join();
  }
}

void main() {
  var solution = Solution();

  String s = "anagram";
  String t = "nagaram";

  bool result = solution.isAnagram(s, t);
  print('"$s"는 "$t"와 아나그렘입니까? $result');

  s = "rat";
  t = "car";

  result = solution.isAnagram(s, t);
  print('"$s"는 "$t"와 아나그렘입니까? $result');
}
