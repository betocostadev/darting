// Using a function to call another function using parameters
// Used the way below if it was in the same score
// int callAndOperate(int num, Function operation) {

void defaultFunc() {
  int square(numb) {
    return numb * numb;
  }

  int cubic(numb) {
    return numb * numb * numb;
  }

  execute(int numb, Function func) {
    return func(numb);
  }

  print(execute(4, square));
  print(execute(3, cubic));
}

// Using the way below to be able to use as an import
int callAndOperate(int num, {String operation = 'increment'}) {
  int increment(num) {
    return num + 1;
  }

  int decrement(num) {
    return num - 1;
  }

  int execute(num) {
    return operation == 'decrement' ? decrement(num) : increment(num);
  }

  return execute(num);
}
