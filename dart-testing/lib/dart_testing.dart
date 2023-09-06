double getDiscount(double value, double discount, bool isPercent) {
  if (value <= 0) {
    throw ArgumentError('Product price cannot be 0 or lower');
  }
  if (discount <= 0) {
    throw ArgumentError('Discount must be above 0');
  }
  if (isPercent) {
    return value - value * (discount / 100);
  }
  return value - discount;
}

String convertToUpper(String text) {
  return text.toUpperCase();
}
