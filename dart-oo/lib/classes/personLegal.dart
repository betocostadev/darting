// Inheritance

import 'package:dart_oo/classes/person.dart';

class PersonLegal extends Person {
  String _cpf = '';

  void setCpf(String cpf) {
    _cpf = cpf;
  }

  String getCpf() {
    return _cpf;
  }

  PersonLegal(String name, int age, String cpf) : super(name, age) {
    _cpf = cpf;
  }

  @override
  String toString() {
    return {"Name": super.getName(), "Age": super.getAge(), "CPF": _cpf}
        .toString();
  }
}
