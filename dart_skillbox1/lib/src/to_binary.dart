String toBinary(y) {
  List<int> x = [];
  for (; y > 0; y = y ~/ 2) {
    x.add(y % 2);
  }
  x = x.reversed.toList();
  return x.join("");
}

int toDecimal(List<int> digits) => int.parse(digits.join(""), radix: 2);
