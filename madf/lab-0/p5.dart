import 'dart:io';

void main(List<String> args) {
  void factorial(int n) {
    for (var i = 1; i <= n; i++) {
      if (n % i == 0) {
        stdout.write("$i ");
      }
    }
  }

  factorial(5);
  print("");
  factorial(125);
  print("");
}
