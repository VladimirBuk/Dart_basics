import 'dart:math';

import 'package:dart_skillbox1/src/koren.dart';
import 'package:dart_skillbox1/src/to_binary.dart';

class Calculator {
  int n;
  int a;
  int b;
  Calculator({required this.n, required this.a, required this.b});

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

class Point {
  num _x;
  num _y;
  num _z;

  Point(this._x, this._y, this._z);

  num distanceTo(Point another) {
    return sqrt(pow((another._x - _x), 2) +
        pow((another._y - _y), 2) +
        pow((another._z - _z), 2));
  }

  static num triangeLeSquare(Point a, Point b, Point c) {
    num ab = a.distanceTo(b);
    num ac = a.distanceTo(c);
    num bc = b.distanceTo(c);
    num p = (ab + ac + bc) / 2;

    return sqrt(p * (p - ab) * (p - ac) * (p - bc));
  }

  factory Point.zero() => Point(0, 0, 0);
  factory Point.one() => Point(1, 1, 1);
}

mixin GNS {
  GetNameSystem(String email) {
    var ml = email.substring(email.indexOf('@'));
    return ml.substring(1);
  }
}

class User {
  final String email;
  User({required this.email});

  @override
  String toString() {
    return email;
  }
}

class AdminUser extends User with GNS {
  AdminUser({required super.email});

  @override
  String toString() {
    return GetNameSystem(email);
  }
}

class GeneralUser extends User {
  GeneralUser({required super.email});

  @override
  String toString() {
    return email;
  }
}

class UserManager<T extends User> {
  List<T> userList;
  UserManager(this.userList);

  addUser(User) {
    userList.add(User);
  }

  removeUserByEmail(String email) {
    userList.removeWhere((userList) => userList.email == email);
  }

  String getEmail() {
    return userList.toString();
  }
}

int conovStrToInt(String str) {
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
  return List.indexOf(str);
}

void main() {
  var t = Calculator(n: 5, a: 14, b: 64);

  print('gcd=${t.gcd(73, 113)} lcm=${t.lcm()}');

  String a = toBinary(35);
  print('to binary= ${a}');

  int x = toDecimal([100011]);
  print('to decimal= $x');

  RegExp exp = RegExp(r"[^0-9]+");
  String str = 'dr45hy' 'uyop899d' 'ftyu6';
  String res = str.replaceAll(exp, '');
  print('num: $res');

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

  List<String> str2 = [
    'one',
    'two',
    'three',
    'four',
    'five',
    'six',
    'seven',
    'eight',
    'nine',
    'zero',
    'zero',
    'green'
  ];
  var numbers = [];
  for (String elem in str2) {
    if (conovStrToInt(elem) != -1) {
      numbers.add(conovStrToInt(elem));
    }
  }
  numbers = numbers.toSet().toList();
  print(numbers);

  var p = Point(5, 6, 9);
  var p2 = Point(12, 15, 23);
  print(p.distanceTo(p2));

  var u1 = User(email: 'example@mail.ru');
  var u2 = AdminUser(email: 'example@gmail.com');
  var u3 = User(email: 'example3@mail.ru');
  var u4 = GeneralUser(email: 'removeme@mail.ru');
  var um = UserManager([u1, u2, u3]);

  print(u2.GetNameSystem(u3.email));
  //print(um.userList);
  um.addUser(u4);
  // print(um.userList);
  um.removeUserByEmail('removeme@mail.ru');
  //print(um.userList);
  print(um.getEmail());

  num s = -2;
  print(s.nSqrt(2));
}
