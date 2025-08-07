
class StringCalculator{
  int add(String numbers) {
    if (numbers.trim().isEmpty) return 0;

    String delimiterPattern = r',|\n';
    String numberString = numbers;

    if (numbers.startsWith('//')) {
      final delimiterEndIndex = numbers.indexOf('\n');
      final delimiterPart = numbers.substring(2, delimiterEndIndex);
      numberString = numbers.substring(delimiterEndIndex + 1);

      if (delimiterPart.startsWith('[')) {
        final matches = RegExp(r'\[([^\]]+)\]').allMatches(delimiterPart);
        final delimiters = matches.map((m) => RegExp.escape(m.group(1)!)).join('|');
        delimiterPattern = delimiters;
      } else {
        delimiterPattern = RegExp.escape(delimiterPart);
      }
    }

    final numberList = numberString
        .split(RegExp(delimiterPattern))
        .map((e) => int.parse(e))
        .toList();

    return numberList.where((n) => n <= 1000).reduce((a, b) => a + b);
  }
}