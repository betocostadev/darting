import 'package:dart_oo/classes/person_legal.dart';
import 'package:dart_oo/classes/person_two.dart';
import 'package:dart_oo/enum/type_notification.dart';
import 'package:dart_oo/services/sendNotification.dart';

void main(List<String> arguments) {
  // Person was changed to an Abstract Class, so it cannot be instantiated
  // PersonLegal is an extension of Person
  PersonLegal beto = PersonLegal('Beto', 37, '329329329329', 'beto@gmail.com',
      '55-11-444499999', 'xpto', TypeNotification.NONE);
  beto.printInfo();
  print('Beto id is ${beto.getCpf()}');
  beto.setTypeNotification(TypeNotification.PUSH_NOTIFICATION);
  // Person, name is not private, the code below works
  // beto.name = 'Beto';
  Person2 carol = Person2();
  carol.setName('Carolina');
  // Person2, name is private, the below cannot be executed
  // carol.name = 'Joana';
  carol.setAge(31);
  carol.printInfo();
  print(carol);

  Person2 james = Person2();
  james.setName('James');
  james.setAge(68);
  james.printInfo();
  print(james.getNameToUpper());
  print(james);

  PersonLegal kratos = PersonLegal('Kratos', 3708, 'kratos@war.org',
      '00-66-66906690', 'xmKElsoi', '00000002-02', TypeNotification.EMAIL);
  kratos.printInfo();
  kratos.setTypeNotification(TypeNotification.SMS);
  print(
      'To contact ${kratos.getName()} please use the notification method ${kratos.getTypeNotification()}');
  print(kratos);

  SendNotification notifyPerson = SendNotification();
  notifyPerson.notify(kratos);
  notifyPerson.notify(beto);
}
