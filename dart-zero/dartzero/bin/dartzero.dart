import 'package:dartzero/dartzero.dart' as dartzero;
import 'package:dartzero/age_height.dart';
import 'package:dartzero/type_casting.dart';

void main(List<String> arguments) {
  print('==== This is DartZero====\n');
  print('The first start using Dart... Hello World?');
  print('Calculate lib: ${dartzero.calculate()}!');
  print(ageAndHeight());

  int worldNumber = 42;
  int goofy = 3;
  double pi = 3.141592;
  double triplePi = pi * 3;
  // Using exponentiation to create a number
  double worldPopulation = 8e7;
  bool thisIsDart = true;
  String croxura = 'croxura!';

  print('\nWorld number int: $worldNumber');
  print('PI double: $pi');
  print('World number / goofy = ${worldNumber / goofy}');
  print('In the case above, Type Casting is automatic!');
  print('Triple Pi: $triplePi');
  print('World Population: $worldPopulation');
  print('Is this dart? $thisIsDart');
  print('Is dart croxy? $croxura');
  print('Love ninfas? ${thisIsDart == true ? 'sim' : 'não'}');
  print('\nNow testing the Type Casting Lib:\n');
  typeCasting();
}
