int maxArea(List<int> height) {
  // 두 포인터: 왼쪽은 0에서, 오른쪽은 마지막 인덱스에서 시작
  int left = 0;
  int right = height.length - 1;

  // 최대 용량을 저장할 변수
  int maxVolume = 0;

  // 포인터가 서로 만나기 전까지 반복
  while (left < right) {
    // 현재 왼쪽과 오른쪽 막대의 높이
    int leftHeight = height[left];
    int rightHeight = height[right];

    // 현재 용량은 더 낮은 높이 * 거리
    int minHeight = leftHeight < rightHeight ? leftHeight : rightHeight;
    int distance = right - left;
    int volume = minHeight * distance;

    // 최대 용량 갱신
    if (volume > maxVolume) {
      maxVolume = volume;
    }

    // 더 낮은 쪽 포인터를 이동시켜서 더 높은 막대를 찾음
    if (leftHeight < rightHeight) {
      left++;
    } else {
      right--;
    }
  }

  return maxVolume;
}

void main() {
  print(maxArea([1, 8, 6, 2, 5, 4, 8, 3, 7])); // 출력: 49
  print(maxArea([1, 1])); // 출력: 1
}
