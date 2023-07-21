mup() {
  List<String> names = ['Tom', 'Sam', 'Max', 'Tom', 'Tom', 'Max'];
  Map namesmap = {};
  for (String name in names) {
    if (namesmap.containsKey(name)) {
      namesmap[name] += 1;
    } else {
      namesmap[name] = 1;
    }
  }
  print(namesmap);
}
