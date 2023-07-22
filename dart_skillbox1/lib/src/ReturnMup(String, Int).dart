ReturnMup(List<String> n) {
  Map nmap = {};
  for (String element in n) {
    if (nmap.containsKey(element)) {
      nmap[element] += 1;
    } else {
      nmap[element] = 1;
    }
  }
  return nmap;
}
