import 'dart:convert';
import 'dart:io';

import 'package:dart_app_one/dart_app_one.dart' as dart_app_one;
import 'package:dart_app_one/funcinfunc.dart' as funcInFunc;

void main(List<String> arguments) {
  print('Hello world: ${dart_app_one.calculate()}!');

  List<String> marketList = ['chocolate', 'cigar', 'soda'];
  // marketList.add(20) Doesn't work - its a string only list
  var anyList = [1, 'bola', 2.12];
  List<int> listNumbers = [1, 3, 4, 6, 9, 16];
  List listDynamic = [5, 'with strings'];
  listDynamic.add(5.3);
  print(listNumbers.where((element) => element > 0 && element < 5));

  for (var i = 0; i < marketList.length; i++) {
    print('You still need to buy ${marketList[i]}');
    print('Any list item: ${anyList[i]}');
    print('Dynamic list item: ${listDynamic[i]}');
  }

  print('\n==== Checking some numbers =======');

  print(
      'Here we have 10 as a string, but we can also have it as a number as it is below: \n');
  print(int.parse('10'));
  // To avoid getting errors if you are unsure of the data you will convert
  print(int.tryParse('source'));

  double number1 = 10.9;
  print(number1.truncate());
  print(number1.toInt());
  print(number1.ceil());
  print(
      'Check if a number is negative, is 10.9 * - 1 negative? ${(number1 * -2).isNegative}');
  print(double.parse('50.55'));

  print('\n===== Strings ======');

  print(''.isEmpty);
  String balls = 'balls';
  if (balls.isNotEmpty) {
    print(balls.length);
  }

  String text1 = 'This is a text';
  print(text1.toUpperCase());
  String text2 = 'This is a text too, but it is different';
  print(text2.contains(text1));
  print(text2.substring(10, 14));
  print(text2.substring(24));
  print(text2.substring(text2.indexOf('but')));

  print(
      '\n ==== Using a function to call another function as a parameter ====');

  funcInFunc.defaultFunc();
  print(funcInFunc.callAndOperate(10, operation: 'increment'));
  print(funcInFunc.callAndOperate(20, operation: 'decrement'));

  print('\n===== Map data type =====');

  // Map can be somewhat like an Object in JS.
  // The map below has keys as Strings, and values as anything (Dynamic)
  // Also called dicts, dictionary
  Map<String, dynamic> map1 = Map<String, dynamic>();

  map1 = {'balls': 10, 'person': 'Rob'};
  print(map1);

  const map2 = {'zero': 0, 'one': 1};
  var map3 = {'minusOne': 0, 'minusTwo': -1};
  map3['minusOne'] = -1;
  map3['minusTwo'] = -2;
  map3.addAll({'minusThree': -3, 'minusFour': -4});
  print(map2);
  print(map3);
  print('Length of map3 is: ${map3.length}');
  print(
      'Does map3 contains the key minusThree? ${map3.containsKey('minusThree')}');
  print('Does map3 contains the value -4? ${map3.containsValue(-4)}');

  print('\n===== Making a sum with for in (check the code) =====');

  List<int> numberList = [1, 2, 3, 5, 8];
  int acumulator = 0;
  for (var element in numberList) {
    acumulator = acumulator + element;
  }
  print(acumulator);

  print('\n===== Getting console inputs =====');

  print('Type the first score: ');

  List<dynamic> scores = [];
  var getScore1 = stdin.readLineSync(encoding: utf8);
  int score1 = getScore1 == null ? 0 : int.parse(getScore1);
  scores.add(score1);

  print('Type the second score: ');
  var getScore2 = stdin.readLineSync(encoding: utf8);
  var score2 =
      getScore2 != null && getScore2.isNotEmpty ? int.tryParse(getScore2) : 0;
  scores.add(score2);

  print('Type the third score: ');
  var score3 = int.tryParse(getUserInput());
  scores.add(score3);

  print('Type the fourth score: ');
  var score4 = int.tryParse(getUserInput());
  scores.add(score4);
  print('User results are: $scores');

  getScoreResults([score1, score2, score3, score4]);
}

String getUserInput() {
  var line = stdin.readLineSync(encoding: utf8);
  return line ?? '';
}

double getScoreResults([scores]) {
  String stringifyScores() {
    var result = '';
    double total = 0.0;
    for (var i = 0; i < scores.length; i++) {
      total += scores[i];
      if (i < scores.length - 1) {
        result = result + '${scores[i]} + ';
      } else {
        result = result +
            '${scores[i]} / ${scores.length} = ${total / scores.length}';
      }
    }
    return result;
  }

  print(stringifyScores());
  exit(0);
}
