import 'package:dart_skillbox1/src/ReturnMup(String,%20Int).dart';
import 'package:dart_skillbox1/src/ConvertStrToInt.dart';
import 'package:dart_skillbox1/src/RootAlgorithm.dart';
import 'package:dart_skillbox1/src/ToBinaryToDecimal.dart';
import 'package:dart_skillbox1/src/ClassPoint.dart';
import 'package:dart_skillbox1/src/ClassUser.dart';
import 'package:dart_skillbox1/src/gcd&lcm.dart';
import 'package:dart_skillbox1/src/ReturnNumbers.dart';

void main() {
  var gl = gcdlcm(12, 36);
  print('gcd=${gl.gcd(gl.a, gl.b)} lcm=${gl.lcm()}');

  String a = toBinary(35);
  print('to binary= $a');

  int x = toDecimal([100011]);
  print('to decimal= $x');

  List<String> str = ['1w2w3e4' '5j6k7l8' '9rf10got11'];
  print(returnNumbers(str));

  List<String> names = ['Tom', 'Tom', 'Max', 'Sam', 'Sam', 'Sam'];
  print(returnMup(names));

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
  print(ConvertStrToInt(str2));

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
