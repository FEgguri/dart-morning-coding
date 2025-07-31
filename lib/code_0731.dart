void main() {
  Solution solution = Solution();
  List<int> nums = [7, 1, 5, 3, 6, 4];
  print(solution.maxProfit(nums));
}

class Solution {
  //bool process = false;
  int get = 0;
  int sumProfit = 0;

  int maxProfit(List<int> prices) {
    int maxValue = prices.reduce((a, b) => a > b ? a : b);
    get = prices[0];
    for (int i = 0; i <= prices.length - 1; i++) {
      //get > lenght = buy
      if (get > prices[i]) {
        print("buyprocess \n get : $get \n price : ${prices[i]}");
        get = prices[i];
      } else if (get < prices[i]) {
        print("sellprocess \n get : $get \n price : ${prices[i]}");
        sumProfit += prices[i] - get;
        get = prices[i];
      }
      //get < lenght = sell => sumprofit
      //result
    }
    return sumProfit;
  }
}
