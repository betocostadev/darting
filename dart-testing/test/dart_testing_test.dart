import 'package:dart_testing/dart_testing.dart';
import 'package:test/test.dart';

void main() {
  test('get discount using percentage', () {
    expect(getDiscount(500, 10, true), equals(450));
  });

  test('get discount using percentage and zero discount', () {
    expect(
        () => getDiscount(500, 0, true), throwsA(TypeMatcher<ArgumentError>()));
  });

  test('get discount not using percentage, and using product price as zero',
      () {
    expect(
        () => getDiscount(0, 10, false), throwsA(TypeMatcher<ArgumentError>()));
  });

  test('get discount not using percentage', () {
    expect(getDiscount(700, 50, false), equals(650));
  });

  group('calculate product prices with discount: ', () {
    var valuesToTest = {
      {'value': 1500, 'discount': 300, 'isPercent': false}: 1200,
      {'value': 1500, 'discount': 20, 'isPercent': true}: 1200
    };

    valuesToTest.forEach((values, expected) {
      test('$values: $expected', () {
        expect(
            getDiscount(
                double.parse(values['value'].toString()),
                double.parse(values['discount'].toString()),
                values['isPercent'] == true),
            equals(expected));
      });
    });
  });

  group('calculate product using invalid parameters: ', () {
    var valuesToTest = {
      {'value': 500, 'discount': 0, 'isPercent': true},
      {'value': 0, 'discount': 10, 'isPercent': false}
    };

    for (var values in valuesToTest) {
      test('$values: Error', () {
        expect(
            () => getDiscount(
                double.parse(values['value'].toString()),
                double.parse(values['discount'].toString()),
                values['isPercent'] == true),
            throwsA(TypeMatcher<ArgumentError>()));
      });
    }
  });
}
