class Person {
  String name;
  int age;

  void printInfo() {
    print('$name is $age years old');
  }

  String getName() {
    return name;
  }

  int getAge() {
    return age;
  }

  void setName(String name) {
    this.name = name;
  }

  void setAge(int age) {
    this.age = age;
  }

  // Class with constructor
  Person(this.name, this.age);
}

class Person2 {
  // Using _variableName means private in Dart
  String _name = '';
  int _age = -1;

  void setName(String name) {
    _name = name;
  }

  void setAge(int age) {
    _age = age;
  }

  String getNameToUpper() {
    return _name.toUpperCase();
  }

  void printInfo() {
    print('$_name is $_age years old');
  }

  @override
  String toString() {
    return {"Name": _name, "Age": _age}.toString();
  }
}
