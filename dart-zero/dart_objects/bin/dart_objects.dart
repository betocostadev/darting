// import 'dart:ffi';
import 'package:dart_objects/recursion.dart';
import 'package:dart_objects/objs_inheritance.dart';
import 'package:dart_objects/some_functions.dart';

void main(List<String> arguments) {
  print('====== Dart Objects & Functions ======');

  // Creating a fruit based on the class Fruit created below
  Fruit fruit01 = Fruit('apple', 254.5, 'light red', 'sweet', 33);
  Fruit fruit02 = Fruit('orange', 296.0, 'orange', 'citrus', 29);
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

  print(fruit02.isFruitRipe(25));
  print(fruit03.sayIsRipe(15));
  fruit03.makeJuice();

  Vegetable veg01 = Vegetable('Brocolli', 10.2, 'green', isNeedsCooking: false);
  print('${veg01.name} needs cooking? ${veg01.isNeedsCooking}');

  CitrusFruit citrus01 =
      CitrusFruit('lemon', 170.5, 'green', 'citrus', 20, 7.5);

  citrus01.printSourLevel();

  OilSeeds oilSeeds01 = OilSeeds('Flax', 8.2, 'brown', 'oil', 30, 40);

  oilSeeds01.printPercentOilLevel();

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
        'The $name was harvested $daysAfterHarvest days ago and needs $daysToRipe days to be ripe, so the fruit is ${isFruitRipe(daysToRipe) ? '' : 'not '}ripe');
  }

  void makeJuice() {
    print('$name juice ready to drink!');
  }
}

class CitrusFruit extends Fruit {
  double sourLevel;

  CitrusFruit(String name, double weight, String color, String flavor,
      int daysAfterHarvest, this.sourLevel)
      : super(name, weight, flavor, color, daysAfterHarvest);

  void printSourLevel() {
    print('The $name sour level is $sourLevel/10');
  }
}

class OilSeeds extends Fruit {
  double percentNaturalOil;

  OilSeeds(String name, double weight, String color, String flavor,
      int daysAfterHarvest, this.percentNaturalOil)
      : super(name, weight, flavor, color, daysAfterHarvest);

  void printPercentOilLevel() {
    print('The $name oil level is $percentNaturalOil%');
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

