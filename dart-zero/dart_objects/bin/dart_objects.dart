// import 'dart:ffi';
import 'package:dart_objects/recursion.dart';

void main(List<String> arguments) {
  print('====== Dart Objects & Functions ======');
  String name = "Orange";
  double weight = 100.10;
  String color = "Light orange";
  String flavor = "Sweet";
  int daysAfterHarvest = 15;
  bool isGoodToEat = funcBeReady(daysAfterHarvest);
  // Calling the function with arguments
  // funcShowIsGoodToEat(name, daysAfterHarvest, weight: weight);
  // funcShowIsGoodToEat("Apple", 6, color: 'light red', weight: 230.5);

  print(toString(name: name, weight: weight, daysHarvest: daysAfterHarvest));

  // Recursion
  print('\n=== Recursion ===');
  int facNumber = 5;
  print('Factorial of $facNumber is ${funcFactorial(facNumber)}');

  // Test for a recursive sum function based on arrays
  List numbers = [10, 20, 30, 40, 50];
  print(
      'The sum of the elements of the Array $numbers is ${recursiveSum(0, numbers)}');
}

String toString(
    {required String name,
    required double weight,
    required daysHarvest,
    int daysToMature = 30,
    bool? isMature}) {
  // Bad way to add a value to a possibly null value
  // if (isMature == null) {
  //   isMature = daysHarvest >= daysToMature;
  // }
  // Good way https://dart-lang.github.io/linter/lints/prefer_conditional_assignment.html
  isMature ??= daysHarvest >= daysToMature;

  String matureText = isMature != null && !isMature ? 'not ' : '';

  String result =
      "The $name weights $weight grams! It has been harversted $daysHarvest days ago and needs $daysToMature to be mature, so, the $name is ${matureText}mature!";

  return result;
}

int funcDaysToBeReady(int daysHarvest) {
  int daysToMature = 30;
  int daysLeft = daysToMature - daysHarvest;
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
