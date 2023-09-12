class Person {
  String _name = '';
  double _weight = 0;
  double _height = 0;

  String getNameToUpper() {
    return _name.toUpperCase();
  }

  void printInfo() {
    print('$_name is $_height M tall and weights $_weight Kg.');
  }

  void setName(String name) {
    _name = name;
  }

  String getName() {
    return _name;
  }

  void setWeight(double weight) {
    _weight = weight;
  }

  double getWeight() {
    return _weight;
  }

  void setHeight(double height) {
    _height = height;
  }

  double getHeight() {
    return _height;
  }

  double getHeightInCentimeters() {
    return _height * 100;
  }

  @override
  String toString() {
    return {"Name": _name, "Weight": _weight, "Height": _height}.toString();
  }
}
