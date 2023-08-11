Map<String, int> returnMup(List<String> n) {
  Map nmap<String, int> = {};
  for (String element in n) {
    nmap.update(element, (value) => ++value, ifAbsent: ()
=> 1  }
  return nmap;
}
