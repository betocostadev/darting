class InvalidHeightException implements Exception {
  String error() => 'Invalid weight!';

  @override
  String toString() {
    return 'InvalidHeightException: ${error()}';
  }
}
