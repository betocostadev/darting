// import 'dart:ffi';
import 'package:dart_objects/recursion.dart';
import 'package:dart_objects/objs_inheritance.dart';

void main(List<String> arguments) {
  print('====== Dart Objects & Functions ======');

  // Creating a fruit based on the class Fruit created below
  Fruit fruit01 = Fruit('apple', 254.5, 'light red', 'sweet', 33);
  Fruit fruit02 = Fruit('orange', 196.0, 'orange', 'citrus', 29);
  Fruit fruit03 = Fruit('grape', 43.6, 'purple', 'sweet', 20);

  // print(fruit01) - Instance of 'Fruit'

  // Calling the function with arguments
  // funcShowIsGoodToEat(name, daysAfterHarvest, weight: weight);
  // funcShowIsGoodToEat("Apple", 6, color: 'light red', weight: 230.5);

  // print(toString(name: name, weight: weight, daysHarvest: daysAfterHarvest));
  print(toString(
      name: fruit01.name,
      weight: fruit01.weight,
      daysHarvest: fruit01.daysAfterHarvest));
  print(toString(
      name: fruit02.name,
      weight: fruit02.weight,
      daysHarvest: fruit02.daysAfterHarvest));
  print(toString(
      name: fruit03.name,
      weight: fruit03.weight,
      daysHarvest: fruit03.daysAfterHarvest));

  fruit03.sayIsRipe(25);
  print(fruit02.isFruitRipe(25));
  fruit03.makeJuice();

  // Recursion - lib/recursion.dart
  print('\n=== Recursion ===');
  int facNumber = 5;
  print('Factorial of $facNumber is ${funcFactorial(facNumber)}');

  // Test for a recursive sum function based on arrays
  List numbers01 = [10, 20, 30, 40, 50];
  List numbers02 = [10, 20, 30, 40, 50, 150];
  print(
      'The sum of the elements of the Array $numbers01 is ${recursiveSum(0, numbers01)}');
  print(
      'The sum of the elements of the Array $numbers02 with a start value of 300 is ${recursiveSum(300, numbers02)}');
}

class Fruit extends Food {
  String flavor;
  int daysAfterHarvest;
  bool? isRipe;

  Fruit(String name, double weight, String color, this.flavor,
      this.daysAfterHarvest,
      {this.isRipe})
      : super(name, weight, color);

  bool isFruitRipe(int daysToRipe) {
    return isRipe ??= daysAfterHarvest >= daysToRipe;
  }

  sayIsRipe(int daysToRipe) {
    print(
        'The $name was harvested $daysAfterHarvest days ago and needs $daysToRipe, so the fruit is ${isFruitRipe(daysToRipe) ? '' : 'not '}ripe');
  }

  void makeJuice() {
    print('$name juice ready to drink!');
  }
}

// Now using objects - Classes
// The base object created previously
// class Fruit {
//   String name;
//   double weight;
//   String color;
//   String flavor;
//   int daysAfterHarvest;
//   bool? isRipe;
//   // Adding the constructor below, the unitialized variables above
//   // will not generate errors
//   Fruit(this.name, this.weight, this.color, this.flavor, this.daysAfterHarvest,
//       {this.isRipe});

//   // Adding a name constructor to require the values
//   Fruit.named(
//       {required this.name,
//       required this.weight,
//       required this.color,
//       required this.flavor,
//       required this.daysAfterHarvest});

//   bool isFruitRipe(int daysToRipe) {
//     return isRipe ??= daysAfterHarvest >= daysToRipe;
//   }

//   sayIsRipe(int daysToRipe) {
//     print(
//         'The $name was harvested $daysAfterHarvest days ago and needs $daysToRipe, so the fruit is ${isFruitRipe(daysToRipe) ? '' : 'not '}ripe');
//   }
// }

// Fruit fruit03 = Fruit.named(
//     name: 'grape',
//     weight: 28.5,
//     color: 'purple',
//     flavor: 'sweet',
//     daysAfterHarvest: 20);

// SOME FUNCTIONS

String toString(
    {required String name,
    required double weight,
    required daysHarvest,
    int daysToRipe = 30,
    bool? isRipe}) {
  // Bad way to add a value to a possibly null value
  // if (isRipe == null) {
  //   isRipe = daysHarvest >= daysToRipe;
  // }
  // Good way https://dart-lang.github.io/linter/lints/prefer_conditional_assignment.html
  isRipe ??= daysHarvest >= daysToRipe;

  String ripeText = isRipe != null && !isRipe ? 'not ' : '';

  String result =
      "The $name weights $weight grams! It has been harversted $daysHarvest days ago and needs $daysToRipe to be ripe, so, the $name is ${ripeText}ripe!";

  return result;
}

int funcDaysToBeReady(int daysHarvest) {
  int daysToRipe = 30;
  int daysLeft = daysToRipe - daysHarvest;
  return daysLeft;
}

bool funcBeReady(int days) {
  if (days >= 10) {
    return true;
  } else {
    return false;
  }
}

// Func params
// Positional - Must
// Named - Optional
// Params - Default
// Modifier - Required

// name, days = Positional (required)
// {String? color} Named (optional)
// function call with named params should use the arguments like: funcShowIsGoodToEat(grapes, 30, color: "red");
void funcShowIsGoodToEat(String name, int days,
    {String? color, String flavor = 'not informed', required double weight}) {
  if (funcBeReady(days) == true) {
    print('The $name fruit is good to be eaten.');
  } else {
    print('The $name fruit is not good to be eaten.');
  }

  if (color != null) {
    print('$name color is $color.');
  }

  print("$name flavor is $flavor.");
  print("$name weight is $weight gr.");
}
