class Solution {
  bool isHappy(int n) {
    Map<int, int> map = {};

    while (n != 1) {
      if (map.containsKey(n)) {
        return false;
      } else {
        map[n] = 1;
      }

      int sum = 0;
      String num = n.toString();

      for (int i = 0; i < num.length; i++) {
        sum += int.parse(num[i]) * int.parse(num[i]);
      }
      n = sum;
    }

    return true;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.isHappy(19));
}
