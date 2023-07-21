class gcdlcm {
  int a;
  int b;

  gcdlcm(this.a, this.b);

  gcd(a, b) {
    while (a != b) {
      if (a > b) {
        a -= b;
      } else {
        b -= a;
      }
    }
    return a;
  }

  lcm() {
    int lcm = a * b ~/ gcd(a, b);
    return lcm;
  }
}
