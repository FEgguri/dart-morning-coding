class Solution {
  int tribonacci(int n) {
    List<int> triList = [0, 1, 1];
    for (int i = 3; i <= n; i++) {
      triList.add(triList[i - 1] + triList[i - 2] + triList[i - 3]);
    }
    print(triList);
    return triList[n];
  }
}

void main() {
  var soultion = Solution();
  print(soultion.tribonacci(2));
}
