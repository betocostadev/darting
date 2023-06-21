void conditionsAndLoops() {
  // Basic if
  int minAge = 18;
  int userAge = 37;
  // As a good practice in Dart, booleans start with "is"
  bool isAllowed = false;

  void meetsAge() {
    if (userAge >= minAge) {
      isAllowed = true;
    } else {
      isAllowed = false;
    }
  }

  meetsAge();

  print(
      'Min age is $minAge, and user age is $userAge, the user is ${isAllowed ? 'allowed' : 'not allowed'}');

  print('\nOdd or even?');

  void oddOrEven() {
    for (int i = 0; i < 5; i++) {
      if (i % 2 == 0) {
        print('$i is even');
      } else {
        print('$i is odd');
      }
    }
  }

  oddOrEven();

  print('=== While ===');

  int energy = 100;

  // while (energy > 0) {
  //   print('Energy remaining: $energy');
  //   energy -= 10;
  // }

  do {
    print('Energy remaining: $energy');
    energy -= 10;
  } while (energy > 0);

  print('Switch Statements can be used... Checking user grades.');

  double betoScore = 9.85;
  double johnScore = 7.99;
  double dungaScore = 4.0;
  double pepeScore = 3.9;

  checkGrade(double grade) {
    switch (grade) {
      case >= 8:
        print('Excellent!');
        break;
      case >= 5 && < 8:
        print('Ok!');
        break;
      case >= 4 && < 6:
        print('Needs improvement!');
        break;
      default:
        print('Bad, you need to study more.');
        break;
    }
  }

  /// Stronger comment
  // print('Beto score is: ${checkGrade(betoScore)}');
  print('Beto score is:');
  checkGrade(betoScore);
  print('John score is:');
  checkGrade(johnScore);
  print('Dunga score is:');
  checkGrade(dungaScore);
  print('Pepe score is:');
  checkGrade(pepeScore);
}
