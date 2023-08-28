// Changed Person to be an abstract class
import 'package:dart_oo/enum/type_notification.dart';

abstract class Person {
  String name;
  int age;
  String email;
  String phone;
  String token;
  TypeNotification typeNotification = TypeNotification.NONE;

  String getName() {
    return name;
  }

  int getAge() {
    return age;
  }

  String getEmail() {
    return email;
  }

  String getPhone() {
    return phone;
  }

  String getToken() {
    return token;
  }

  TypeNotification getTypeNotification() {
    return typeNotification;
  }

  void printInfo() {
    print('$name is $age years old');
  }

  void setName(String name) {
    this.name = name;
  }

  void setAge(int age) {
    this.age = age;
  }

  void setEmail(String email) {
    this.email = email;
  }

  void setPhone(String phone) {
    this.phone = phone;
  }

  void setToken(String token) {
    this.token = token;
  }

  void setTypeNotification(TypeNotification typeNotification) {
    this.typeNotification = typeNotification;
  }

  // Class with constructor
  Person(this.name, this.age, this.email, this.phone, this.token,
      {TypeNotification typeNotification = TypeNotification.NONE});
}
