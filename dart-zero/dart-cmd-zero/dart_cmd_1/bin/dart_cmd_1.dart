import 'package:dart_cmd_1/dart_cmd_1.dart' as dart_cmd_1;
import 'dart:io';

void main(List<String> arguments) {
  print('===== DART - CMD =====');
  print('Hello world: ${dart_cmd_1.calculate()}!');

  print("Whats your age?");
  String? input = stdin.readLineSync();
  if (input != null) {
    int age = int.parse(input);
    print("Next year you'll have ${age + 1} years old.");
  } else {
    print("It was not possible to calculate your age.");
  }
}
