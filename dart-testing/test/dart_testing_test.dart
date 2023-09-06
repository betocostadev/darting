import 'package:dart_testing/classes/viacep.dart';
import 'package:dart_testing/dart_testing.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'dart_testing_test.mocks.dart';

@GenerateMocks([mockViaCep])
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

  // STRING TESTS

  test('Convert string to UpperCase string', () {
    expect(convertToUpper('ball'), equals('BALL'));
  });

  test('Convert string with false positive', () {
    expect(convertToUpper('DiO'), equalsIgnoringCase('dio'));
  });

  // HTTP TESTS

  // Real test
  test('Get HTTP data using CEP', () async {
    var viaCEP = viaCep();
    var body = await viaCEP.getDataByCEP('01001000');
    print(body);

    expect(body['bairro'], equals('Sé'));
    expect(body['logradouro'], equalsIgnoringCase('praça da sé'));
  });

  // Same test, but using mock data
  test('Get HTTP data using CEP - With mock data', () async {
    MockmockViaCep mockMockViaCEP = MockmockViaCep();
    when(mockMockViaCEP.getDataByCEP('01001000'))
        .thenAnswer((realInvocation) => Future.value({
              "cep": "01001-000",
              "logradouro": "Praça da Sé",
              "complemento": "lado ímpar",
              "bairro": "Sé",
              "localidade": "São Paulo",
              "uf": "SP",
              "ibge": "3550308",
              "gia": "1004",
              "ddd": "11",
              "siafi": "7107"
            }));
    var body = await mockMockViaCEP.getDataByCEP('01001000');
    print(body);

    expect(body['bairro'], equals('Sé'));
    expect(body['logradouro'], equalsIgnoringCase('praça da sé'));
  });
}

// Intermediate class to mock viacep http calls
// To start generating the new classes for mocking add the Generate Mocks at the
// top of the file as:
// @GenerateMocks([mockViaCep])
// Then run dart run build_runner build --delete-conflicting-outputs
// It will generate the file _test.mocks.dart
class mockViaCep extends Mock implements viaCep {}
