class DelementersCalculator {
  int a;
  int b;

  DelementersCalculator(this.a, this.b);

  int gcd(a, b) {
    while (a != b) {
      if (a > b) {
        a -= b;
      } else {
        b -= a;
      }
    }
    return a;
  }

  int lcm() {
    int lcm = a * b ~/ gcd(a, b);
    return lcm;
  }
}
