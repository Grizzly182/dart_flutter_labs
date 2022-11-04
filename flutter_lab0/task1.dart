void fizzbuzz({int numsAmount = 0}) {
  for (int i = 1; i <= numsAmount; i++) {
    bool byThree = i % 3 == 0;
    bool byFive = i % 5 == 0;

    if (byThree && byFive) {
      print("fizzbuzz");
    } else if (byThree) {
      print("fizz");
    } else if (byFive) {
      print("buzz");
    } else {
      print(i);
    }
  }
} //for

void main() {
  fizzbuzz(numsAmount: 15);
}
