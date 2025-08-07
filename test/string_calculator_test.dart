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

  test('returns sum of two numbers', () {
    expect(calculator.add('1,2'), 3);
  });

  test('handles newlines as delimiters', () {
    expect(calculator.add('1\n2,3'), 6);
  });

  test('supports custom single-character delimiter', () {
    expect(calculator.add('//;\n1;2'), 3);
  });

  test('should support multiple and multi-character custom delimiters', () {
    final calculator = StringCalculator();
    expect(calculator.add('//[***][%]\n1***2%3'), 6);
  });
}
