import 'package:dart_oo/enum/type_notification.dart';

class Person2 {
  // Using _variableName means private in Dart
  String _name = '';
  int _age = -1;
  TypeNotification typeNotification = TypeNotification.NONE;

  TypeNotification getTypeNotification() {
    return typeNotification;
  }

  String getNameToUpper() {
    return _name.toUpperCase();
  }

  void printInfo() {
    print('$_name is $_age years old');
  }

  void setName(String name) {
    _name = name;
  }

  void setAge(int age) {
    _age = age;
  }

  void setTypeNotification(TypeNotification typeNotification) {
    this.typeNotification = typeNotification;
  }

  @override
  String toString() {
    return {"Name": _name, "Age": _age}.toString();
  }
}
