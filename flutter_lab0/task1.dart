void fizzbuzz({int numsAmount = 0}) {
  for (int i = 1; i <= numsAmount; i++) {
    if (i % 3 == 0) {
      if (i % 3 == 0 && i % 5 == 0) {
        print("fizzbuzz");
      } else {
        print("fizz");
      }
    } else if (i % 5 == 0) {
      print("buzz");
    } else {
      print("$i");
    }
  } //for
}

void main() {
  fizzbuzz(numsAmount: 15);
}
