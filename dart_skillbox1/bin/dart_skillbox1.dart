import 'package:dart_skillbox1/src/(4)mapint.dart';
import 'package:dart_skillbox1/src/(5)conovStrToInt.dart';
import 'package:dart_skillbox1/src/(7)koren.dart';
import 'package:dart_skillbox1/src/(2)to_binary.dart';
import 'package:dart_skillbox1/src/(6)point.dart';
import 'package:dart_skillbox1/src/(8)user.dart';
import 'package:dart_skillbox1/src/(1)gcd&lcm.dart';
import 'package:dart_skillbox1/src/(3)toNum.dart';

void main() {
  var gl = gcdlcm(12, 25);
  print('gcd=${gl.gcd(gl.a, gl.b)} lcm=${gl.lcm()}');

  String a = toBinary(35);
  print('to binary= $a');

  int x = toDecimal([100011]);
  print('to decimal= $x');

  List<String> str3 = ['1w2w3e4' '5j6k7l8' '9rf10got11'];
  print(returnNum(str3));

  List<String> names = ['Tom', 'Tom', 'Max', 'Sam', 'Sam', 'Sam'];
  print(tomup(names));

  List<String> str = [
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
  print(conovStrtoInt(str));

  var p = Point(5, 6, 9);
  var p2 = Point(12, 15, 23);
  print('distanse to: ${p.distanceTo(p2)}');

  var u1 = User(email: 'example@mail.ru');
  var u2 = AdminUser(email: 'example@gmail.com');
  var u3 = User(email: 'example3@mail.ru');
  var u4 = GeneralUser(email: 'removeme@mail.ru');
  var um = UserManager([u1, u2, u3]);

  print(u2.GetNameSystem(u3.email));
  print(um.userList);
  um.addUser(u4);
  print(um.userList);
  um.removeUserByEmail('removeme@mail.ru');
  print(um.userList);
  print(um.getEmail());

  num s = -2;
  print(s.nSqrt(2));
}
