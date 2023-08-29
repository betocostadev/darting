import 'dart:convert';
import 'dart:io';

// import 'package:dart_except/dart_except.dart' as dart_except;

void main(List<String> arguments) {
  print('Type a number:');
  var line = stdin.readLineSync(encoding: utf8);
  try {
    double userNum = double.parse(line ?? '');
    print(userNum);
  } catch (e) {
    print(e);
    print('Invalid number: $line');
  } finally {
    print('Exiting...');
  }
}
