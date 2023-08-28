import 'package:dart_oo/classes/person.dart';
import 'package:dart_oo/classes/personLegal.dart';

void main(List<String> arguments) {
  Person beto = Person('Beto', 37);
  Person2 carol = Person2();
  beto.printInfo();
  // Person, name is not private, the code below works
  // beto.name = 'Beto';
  carol.setName('Carolina');
  // Person2, name is private, the below cannot be executed
  // carol.name = 'Joana';
  carol.setAge(31);
  carol.printInfo();

  Person2 james = Person2();
  james.setName('James');
  james.setAge(68);
  james.printInfo();
  print(james.getNameToUpper());
  print(james);

  PersonLegal kratos = PersonLegal('Kratos', 3708, '00000002-02');
  kratos.printInfo();
  print(kratos);
}
