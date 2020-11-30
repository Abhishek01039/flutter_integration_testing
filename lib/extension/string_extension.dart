extension NumberExtension on String {
  int toInt() {
    return int.tryParse(this ?? '0');
  }

  double toDouble() {
    return double.tryParse(this ?? '0');
  }
}

extension Decimal on double {
  double keepTwoDigitDecimal() {
    return double.tryParse(this?.toStringAsFixed(2));
  }
}

extension CounterExptension on int {
  int addOne() {
    return this ?? 0 + 1;
  }
}

extension FirstLetterUpper on String {
  String toMehod() {
    if (this != null) {
      return this[0].toUpperCase() + this.substring(1);
    } else {
      return "";
    }
  }
}
