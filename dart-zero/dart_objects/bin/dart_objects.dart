void main(List<String> arguments) {
  print('====== Dart Objects & Functions ======');
  String name = "Orange";
  double weight = 100.10;
  String color = "Light orange";
  String flavor = "Sweet";
  int daysAfterHarvest = 15;
  bool isGoodToEat = funcBeReady(daysAfterHarvest);
  // Calling the function with arguments
  funcShowIsGoodToEat(name, daysAfterHarvest, weight: weight);
  funcShowIsGoodToEat("Apple", 6, color: 'light red', weight: 230.5);

  int facNumber = 5;
  print('Factorial of $facNumber is ${funcFact(facNumber)}');
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
// function call with named params: funcShowIsGoodToEat(grapes, 30, color: "red");
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

// Recursion
int funcFact(int n) {
  if (n == 1) {
    return 1;
  } else {
    return n * funcFact(n - 1);
  }
}
