bool anagram({String first = "", String second = ""}) {
  first = first.toLowerCase();
  second = second.toLowerCase();

  int i = first.length - 1;
  int max1 = 0;

  int j = 0;
  int max2 = second.length - 1;

  while (i >= max1 && j <= max2) {
    if (!isAlphabetChar(first[i])) {
      i--;
      continue;
    }
    if (!isAlphabetChar(second[j])) {
      j++;
      continue;
    }
    if (first[i] != second[j]) {
      return false;
    }

    i--;
    j++;
  }
  return true;
}

bool isAlphabetChar(String c) {
  return c.contains(new RegExp('^[a-zA-z]')) ||
      c.contains(new RegExp('^[а-яА-Я]'));
}

void main() {
  print(anagram(first: "dneirf??..,,", second: "Frien.d"));
  print(anagram(first: "bye", second: "hello"));
  print(anagram(first: "friend", second: "DNEIRF"));
}
