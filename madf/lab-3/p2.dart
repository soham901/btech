// factorial
import 'dart:io';

void main () {
  stdout.write('Enter a num: ');
  int n = int.parse(stdin.readLineSync()!);

  int factorial = 1;
  for (var i = 1; i <= n; i++) {
    factorial *=i;
  }

  print("Factorial: $factorial");
}