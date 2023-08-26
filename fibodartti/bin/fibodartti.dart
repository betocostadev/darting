import 'dart:convert';
import 'dart:io';

// import 'package:fibodartti/fibodartti.dart' as fibodartti;
import 'package:fibodartti/fibonacci.dart';

void main(List<String> arguments) {
  print('Type the number you want to the Fibonacci sequence:');
  String? line = stdin.readLineSync(encoding: utf8);

  while (int.tryParse(line.toString()) == null) {
    print('Invalid input. Type the number you want to the Fibonacci sequence:');
    line = stdin.readLineSync(encoding: utf8).toString();
  }

  int target = int.parse(line.toString());

  print('Great, I will give you the Fibonacci sequence for $target');

  print('Fibonacci for $target is ${fibonacci(target)}');
}
