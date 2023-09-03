import 'dart:io';

import 'package:dart_except/models/student.dart';
import 'package:dart_except/models/exceptions/invalid_name_exception.dart';
import 'package:dart_except/utils/console_utils.dart';

void execute() {
  print('Welcome to student score system');
  String name =
      ConsoleUtils.readStringWithText('Please tell the student name: ');

  try {
    if (name.trim() == '') {
      throw InvalidNameException();
    }
  } catch (e) {
    print(e);
    exit(0);
  }

  var student1 = Student(name);
  double? score;

  do {
    score = ConsoleUtils.getDoubleWithText(
        'Please type the student scores. Press any letter to finish.');
    if (score != null) {
      student1.addScore(score);
    }
  } while (score != null);

  print('${student1.getName()} scores: ${student1.getScores()}');
  print('${student1.getName()} average is ${student1.getAverage()}');
  print(student1.isAproved(7) ? 'Student is approved' : 'Student is repproved');
}
