import 'package:flutter_test/flutter_test.dart';
import 'package:stringcalculator/StringCalculator.dart';

void main() {
  final calculator = StringCalculator();

  test('returns 0 for empty string', () {
    expect(calculator.add(''), 0);
  });

  test('returns number when single number is given', () {
    expect(calculator.add('5'), 5);
  });
}
