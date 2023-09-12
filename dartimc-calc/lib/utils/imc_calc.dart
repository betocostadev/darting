String calcImc(double height, double weight) {
  String getImcRating(double imc) {
    switch (imc) {
      case < 16:
        return 'Extremely Underweight';
      case < 17:
        return 'Underweight';
      case < 18.5:
        return 'Lightly Underweight';
      case < 25:
        return 'Normal';
      case < 30:
        return 'Overweight';
      case < 35:
        return 'Obese I';
      case < 40:
        return 'Obese II';
      default:
        return 'Obese III';
    }
  }

  String calcIMC(double height, double weight) {
    double imc = weight / (height * height);
    String result =
        'Your IMC rating ${imc.toStringAsFixed(3)} is ${getImcRating(imc)}';
    return result;
  }

  return calcIMC(height, weight);
}
