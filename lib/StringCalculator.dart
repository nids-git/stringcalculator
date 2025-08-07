
class StringCalculator{
  int add(String numbers) {
    if (numbers.trim().isEmpty) return 0;

    String delimiter = ',|\n';
    String numberString = numbers;

    if (numbers.startsWith('//')) {
      final parts = numbers.split('\n');
      delimiter = RegExp.escape(parts[0].substring(2));
      numberString = parts[1];
    }

    final numberList = numberString
        .split(RegExp(delimiter))
        .map(int.parse)
        .toList();

    return numberList.where((n) => n <= 1000).reduce((a, b) => a + b);
  }


}