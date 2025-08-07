
class StringCalculator{
  int add(String numbers) {
    if (numbers.trim().isEmpty) return 0;

    final nums = numbers.split(RegExp(',|\n')).map((e) => int.parse(e)).toList();
    return nums.reduce((a, b) => a + b);
  }


}