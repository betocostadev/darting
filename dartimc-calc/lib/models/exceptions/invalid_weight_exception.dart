class InvalidWeightException implements Exception {
  String error() => 'Invalid weight!';

  @override
  String toString() {
    return 'InvalidWeightException: ${error()}';
  }
}
