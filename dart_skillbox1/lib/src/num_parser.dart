num numParser(List<String> inputData) {
  RegExp exp = RegExp(r"[^0-9]+");
  String str = inputData.toString();
  String res = str.replaceAll(exp, '');
  int result = int.parse(res);
  return result;
}
