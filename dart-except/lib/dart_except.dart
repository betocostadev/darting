import 'package:dart_except/models/Student.dart';
import 'package:dart_except/utils/console_utils.dart';

void execute() {
  print('Welcome to student score system');
  String name =
      ConsoleUtils.readStringWithText('Please tell the student name: ');

  var Student1 = Student(name);
  double? score;

  do {
    score = ConsoleUtils.getDoubleWithText(
        'Please type the student scores. Press any letter to finish.');
    if (score != null) {
      Student1.addScore(score);
    }
  } while (score != null);

  print('${Student1.getName()} scores: ${Student1.getScores()}');
  print('${Student1.getName()} average is ${Student1.getAverage()}');
  print(Student1.isAproved(7) ? 'Student is approved' : 'Student is repproved');
}
