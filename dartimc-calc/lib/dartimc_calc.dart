import 'dart:io';

import 'package:dartimc_calc/classes/Person.dart';
import 'package:dartimc_calc/models/exceptions/invalid_height_exception.dart';
import 'package:dartimc_calc/models/exceptions/invalid_name_exception.dart';
import 'package:dartimc_calc/models/exceptions/invalid_weight_exception.dart';
import 'package:dartimc_calc/utils/console_utils.dart';
import 'package:dartimc_calc/utils/imc_calc.dart';

void execute() {
  print('Welcome to Dartimc - A IMC calculator');

  Person user = Person();

  String name = ConsoleUtils.readStringWithText('Type your name: ');

  try {
    if (name.trim() == '') {
      throw InvalidNameException();
    }
  } catch (e) {
    print(e);
    exit(0);
  }

  double? weight = ConsoleUtils.readDoubleWithText('Type your weight in Kg: ');

  try {
    if (weight == null || (weight.isNaN)) {
      throw InvalidWeightException();
    }
  } catch (e) {
    print(e);
    exit(0);
  }

  double? height = ConsoleUtils.readDoubleWithText(
      'Type your height in Meters (example 1.65)');

  try {
    if (height == null || (height.isNaN)) {
      throw InvalidHeightException();
    }
  } catch (e) {
    print(e);
    exit(0);
  }

  user.setName(name);
  user.setWeight(weight);
  user.setHeight(height);
  user.printInfo();

  var result = calcImc(user.getHeight(), user.getWeight());
  print(result);
  exit(0);
}
