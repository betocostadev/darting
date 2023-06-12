void conditionsAndLoops() {
  // Basic if
  int minAge = 18;
  int userAge = 37;
  bool allowed = false;

  void meetsAge() {
    if (userAge >= minAge) {
      allowed = true;
    } else {
      allowed = false;
    }
  }

  meetsAge();

  print(
      'Min age is $minAge, and user age is $userAge, the user is ${allowed ? 'allowed' : 'not allowed'}');

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
}
