// SOME FUNCTIONS

String toString(
    {required String name,
    required double weight,
    required daysHarvest,
    int daysToRipe = 30,
    bool? isRipe}) {
  // Bad way to add a value to a possibly null value
  // if (isRipe == null) {
  //   isRipe = daysHarvest >= daysToRipe;
  // }
  // Good way https://dart-lang.github.io/linter/lints/prefer_conditional_assignment.html
  isRipe ??= daysHarvest >= daysToRipe;

  String ripeText = isRipe != null && !isRipe ? 'not ' : '';

  String result =
      "The $name weights $weight grams! It has been harversted $daysHarvest days ago and needs $daysToRipe to be ripe, so, the $name is ${ripeText}ripe!";

  return result;
}

int funcDaysToBeReady(int daysHarvest) {
  int daysToRipe = 30;
  int daysLeft = daysToRipe - daysHarvest;
  return daysLeft;
}

bool funcBeReady(int days) {
  if (days >= 10) {
    return true;
  } else {
    return false;
  }
}

// Func params
// Positional - Must
// Named - Optional
// Params - Default
// Modifier - Required

// name, days = Positional (required)
// {String? color} Named (optional)
// function call with named params should use the arguments like: funcShowIsGoodToEat(grapes, 30, color: "red");
void funcShowIsGoodToEat(String name, int days,
    {String? color, String flavor = 'not informed', required double weight}) {
  if (funcBeReady(days) == true) {
    print('The $name fruit is good to be eaten.');
  } else {
    print('The $name fruit is not good to be eaten.');
  }

  if (color != null) {
    print('$name color is $color.');
  }

  print("$name flavor is $flavor.");
  print("$name weight is $weight gr.");
}
