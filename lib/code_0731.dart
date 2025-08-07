void main() {
  Solution solution = Solution();
  List<int> nums = [7, 1, 5, 3, 6, 4];
  print(solution.maxProfit(nums));
}

class Solution {
  int get = 0;
  int sumProfit = 0;
  bool buyprocess = false;

  int maxProfit(List<int> prices) {
    get = prices[0];
    for (int i = 0; i <= prices.length - 1; i++) {
      if (i != 0 && prices[i - 1] > prices[i]) {
        // if (get > prices[i]) {
        //   get = prices[i];
        // }
        get = prices[i];
      } else if (get < prices[i]) {
        sumProfit += prices[i] - get;
        get = prices[i];
      }
    }
    return sumProfit;
  }
}
