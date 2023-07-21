toNum() {
  RegExp exp = RegExp(r"[^0-9]+");
  String str = 'grey234434' '43434t';
  String res = str.replaceAll(exp, '');
  print('числа:$res');
}
