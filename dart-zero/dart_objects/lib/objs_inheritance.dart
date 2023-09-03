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
class Vegetable extends Food implements Cake {
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

  // Needed since we are using the "implements Cake" abstract class
  @override
  void splitIngredients() {
    print('Spliting ingredients...');
  }

  @override
  void makeDough() {
    print('Making Dough to cook it...');
  }

  @override
  void bake() {
    print('Baking...');
  }
}

// ====== ABSTRACT CLASSES =======
// Also know as Interfaces
// To understand it, think about a fruit. You know a banana is a fruit. The fruit is
// the abstract that can have a banana, a pineapple, etc.

abstract class Cake {
  void splitIngredients() {}

  void makeDough() {}

  void bake() {}
}
