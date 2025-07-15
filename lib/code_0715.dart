int maxProfit(List<int> prices) {
  int minPrice = 10001; // 문제 조건상 최대 가격보다 크게 초기화
  int maxProfit = 0;

  for (int price in prices) {
    if (price < minPrice) {
      minPrice = price; // 지금까지 본 최저 가격 갱신
    } else if (price - minPrice > maxProfit) {
      maxProfit = price - minPrice; // 최대 이익 갱신
    }
  }

  return maxProfit;
}

void main() {
  List<int> prices1 = [7, 1, 5, 3, 6, 4];
  print(maxProfit(prices1)); // 출력: 5

  List<int> prices2 = [7, 6, 4, 3, 1];
  print(maxProfit(prices2)); // 출력: 0
}