List<int> ConvertStrToInt<T>(T) {
  List<int> numbers = [];
  for (String element in T) {
    if (cst(element) != -1) {
      numbers.add(cst(element));
    }
  }

  return numbers.toSet().toList();
}

int cst(String str2) {
  var List = [
    'zero',
    'one',
    'two',
    'three',
    'four',
    'five',
    'six',
    'seven',
    'eight',
    'nine'
  ];
  return (List.indexOf(str2));
}
