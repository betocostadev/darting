import 'package:dart_objects/recursion.dart';
import 'package:test/test.dart';

void main() {
  test('recursive-factorial', () {
    expect(funcFactorial(5), 120);
  });
  test('recursive-sum-zero-length', () {
    expect(recursiveSum(3, []), 3);
  });
  test('recursive-sum-length-start-zero', () {
    expect(recursiveSum(0, [10, 20, 30]), 60);
  });
  test('recursive-sum-length-start-ten', () {
    expect(recursiveSum(10, [10, 20, 30]), 70);
  });
}
