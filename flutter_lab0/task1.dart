void fizzbuzz({int n = 0}) {
  for (int i = 1; i <= n; i++) {
    if (i % 3 == 0) {
      if (i % 3 == 0 && i % 5 == 0) {
        print("fizzbuzz");
      } else {
        print("fizz");
      }
    } else if (i % 5 == 0) {
      print("buzz");
    } //else if
    else {
      print("$i");
    }
  } //for
}

void main(List<String> args) {
  fizzbuzz(n: 15);
}
