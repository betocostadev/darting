import 'package:dartzero/multiply.dart' as dartzero;
import 'package:dartzero/age_height.dart';
import 'package:dartzero/type_casting.dart';
import 'package:dartzero/conditions_and_loops.dart';

void main(List<String> arguments) {
  print('==== This is DartZero====\n');
  print('The first start using Dart... Hello World?');
  print('Calculate lib: ${dartzero.multiply()}!');
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

  // List is based on type, but it's possible to mix data types.
  // If you don't want types to be mixed, define the type with <type>
  List<String> names = ['Ragnar', 'Odin', 'Bjorn', 'Thor'];
  print(names.length);
  print(names);
  // Mixed Array
  List<dynamic> things = [0, 3.5, 12, 'Thor', 'Trunks'];
  print(things[things.length - 1]);
  print('Filho do Ragnar é o ${names[2]}');

  int forty = 40;
  int fifty = 50;
  String city = 'Amsterdam';

  // <dynamic> is costly, better to avoid unless necessary
  List<dynamic> somelist = [forty, fifty, city];
  print(somelist);

  // var, const and final
  // var is used when you are not sure about the value of the variable
  // If it will not be initialized, it is recomended to declare as dynamic var
  dynamic something;
  something = 'a string';
  print('Something now is $something');
  var mayChange = 'a value received from the api';
  // mayChange = 'modificada'; // Ok to do.
  print('Somethings a var is usable, maybe when $mayChange');
  const String beto = 'Beto Costa';
  // Final means it is declared only once - can only be set once.
  final String squareFace;
  squareFace = 'Square Face';
  // The diference from const is that it can be created as empty and initialized with a value later.
  print('$beto enjoyed animating $squareFace');

  print('\n====== Conditions in Dart ======\n');
  conditionsAndLoops();
}
