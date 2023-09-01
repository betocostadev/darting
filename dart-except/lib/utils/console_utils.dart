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

  static double? getDouble() {
    var value = readString();
    try {
      return double.parse(value);
    } catch (e) {
      // print('$e: Exiting the application.');
      return null;
    }
  }

  static double? getDoubleWithText(String number) {
    print(number);
    return getDouble();
  }
}
