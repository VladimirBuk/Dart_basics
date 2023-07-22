returnNum(List<String> str0) {
  RegExp exp = RegExp(r"[^0-9]+");
  String str = str0.toString();
  String res = str.replaceAll(exp, '');
  return ('числа:$res');
}
