// Recursion

// Factorial
int funcFactorial(int n) {
  if (n == 1) {
    return 1;
  } else {
    return n * funcFactorial(n - 1);
  }
}

// A recursive function to some all numbers in an array
num recursiveSum(int startValue, List numbers) {
  int pointer = 0;

  num calc(num sum, int pointer, List numbers) {
    if (numbers.length == 1) {
      return numbers[0] + startValue;
    } else {
      if (pointer >= numbers.length) {
        return sum;
      } else {
        return sum = numbers[pointer] + calc(sum, pointer + 1, numbers);
      }
    }
  }

  return calc(startValue, pointer, numbers);
}
