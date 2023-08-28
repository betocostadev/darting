// Inheritance

import 'package:dart_oo/classes/person.dart';
import 'package:dart_oo/enum/type_notification.dart';

class PersonLegal extends Person {
  String _cpf = '';

  void setCpf(String cpf) {
    _cpf = cpf;
  }

  String getCpf() {
    return _cpf;
  }

  PersonLegal(String name, int age, String email, String phone, String token,
      String cpf, TypeNotification typeNotification)
      : super(name, age, email, phone, token,
            typeNotification: typeNotification) {
    _cpf = cpf;
  }

  @override
  String toString() {
    return {
      "Name": super.getName(),
      "Age": super.getAge(),
      "Email": getEmail(),
      "Phone": getPhone(),
      "Token": getToken(),
      "CPF": _cpf,
      "Notification type": getTypeNotification(),
    }.toString();
  }
}
