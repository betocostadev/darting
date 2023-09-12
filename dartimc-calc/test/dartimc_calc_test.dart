import 'package:dartimc_calc/classes/Person.dart';
import 'package:dartimc_calc/utils/imc_calc.dart';
import 'package:test/test.dart';

void main() {
  test('Create person and read basic info', () {
    Person user = Person();
    user.setName('Beto');
    user.setWeight(95.5);
    user.setHeight(1.75);

    expect(user.getNameToUpper(), 'BETO');
    expect(user.getWeight(), 95.5);
    expect(user.getHeight(), 1.75);
    expect(user.getHeightInCentimeters(), 175);
  });

  group('Get IMC results for all ratings ', () {
    var valuesToTest = {
      {'height': 1.85, 'weight': 45.5}: 'Extremely Underweight',
      {'height': 1.85, 'weight': 60}: 'Underweight',
      {'height': 1.81, 'weight': 60}: 'Lightly Underweight',
      {'height': 1.81, 'weight': 65}: 'Normal',
      {'height': 1.75, 'weight': 95.5}: 'Obese I',
      {'height': 1.50, 'weight': 90}: 'Obese II',
      {'height': 1.73, 'weight': 106}: 'Obese II',
      {'height': 1.65, 'weight': 112}: 'Obese III',
    };

    valuesToTest.forEach((values, expected) {
      test('$values: $expected', () {
        expect(
            calcImc(double.parse(values['height'].toString()),
                double.parse(values['weight'].toString())),
            contains(expected));
      });
    });
  });
}
