class Solution {
  bool uniqueOccurrences(List<int> arr) {
    final Map<int, int> freq = {};

    // 1. 각 숫자의 빈도 계산
    for (int num in arr) {
      freq[num] = (freq[num] ?? 0) + 1;
    }

    // 2. 빈도만 추출해서 리스트로 변환
    final List<int> freqValues = freq.values.toList();

    // 3. Set으로 중복 여부 판단
    final Set<int> freqSet = freqValues.toSet();

    return freqValues.length == freqSet.length;
  }
}

void main() {
  Solution solution = Solution();
  List<int> arr = [1, 2, 2, 1, 1, 3];
  print(solution.uniqueOccurrences(arr));
}
