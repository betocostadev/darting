import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  static String readString() {
    return stdin.readLineSync(encoding: utf8) ?? '';
  }

  static String readStringWithText(String text) {
    print(text);
    return readString();
  }

  static double? readDouble() {
    var value = readString();
    try {
      return double.parse(value);
    } catch (e) {
      return null;
    }
  }

  static double? readDoubleWithText(String number) {
    print(number);
    return readDouble();
  }
}
