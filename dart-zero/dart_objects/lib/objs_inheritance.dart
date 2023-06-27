// More about objects and Inheritance

// Base class - Parent
// SuperClass
class Food {
  String name;
  double weight;
  String color;
  Food(this.name, this.weight, this.color);

  void printFood() {
    print('$name weights $weight and it\'s color is $color');
  }
}

// Inheriting classes
// SubClass
class Vegetable extends Food {
  bool isNeedsCooking;

  Vegetable(String name, double weight, String color,
      {required this.isNeedsCooking})
      : super(name, weight, color);

  void cook() {
    if (isNeedsCooking) {
      print('Cooking $name...');
    } else {
      print('$name is cooked already!');
    }
  }
}
