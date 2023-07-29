import 'package:dart_skillbox1/src/mapper.dart';
import 'package:dart_skillbox1/src/num_parser_2.dart';
import 'package:dart_skillbox1/src/sqrt_calculator.dart';
import 'package:dart_skillbox1/src/bin_coder.dart';
import 'package:dart_skillbox1/src/point.dart';
import 'package:dart_skillbox1/src/user_manager.dart';
import 'package:dart_skillbox1/src/delemeters_calculator.dart';
import 'package:dart_skillbox1/src/num_parser.dart';

void main() {
  var gl = DelementersCalculator(12, 36);
  print('gcd=${gl.gcd(gl.a, gl.b)} lcm=${gl.lcm()}');

  String a = toBinary(24);
  print('to binary= $a');

  int x = toDecimal([11000]);
  print('to decimal= $x');

  List<String> str = ['1w2w3e4' '5j6k7l8' '9rf10got11'];
  print(numParser(str));

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

  num s = -6;
  print(s.nSqrt(2));
}
