Map<String, int> returnMup(List<String> n) {
  Map nmap = {};
  for (String element in n) {
    if (nmap.containsKey(element)) {
      nmap[element] += 1;
    } else {
      nmap[element] = 1;
    }
  }
  return nmap.map((key, value) => MapEntry(key.toString(), value.toInt()));
}
