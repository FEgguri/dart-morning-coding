import 'dart:collection';

class RecentCounter {
  Queue<int> q = Queue<int>();
  RecentCounter();

  int ping(int t) {
    q.addLast(t);

    if (q.isNotEmpty && q.first < t - 3000 //&& q.first > 3000
        ) {
      q.removeFirst();
    }

    return q.length;
  }
}

void main() {
  RecentCounter recentCounter = RecentCounter();
  recentCounter.ping(1);
  recentCounter.ping(100);
}
//Runtime: 2 ms