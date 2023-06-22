import 'package:dart_objects/recursion.dart';
import 'package:test/test.dart';

void main() {
  test('recursive-factorial', () {
    expect(funcFactorial(5), 120);
  });
  test('recursive-sum', () {
    expect(recursiveSum(0, [10, 20]), 30);
  });
}
