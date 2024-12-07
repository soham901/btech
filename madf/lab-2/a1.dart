// WAP to check whether the given number is positive or negative.

import 'dart:io';

void main() {
  stdout.write("Enter n : ");
  num n = num.parse(stdin.readLineSync()!);

  print(n > 0 ? "Positive" : "Negative");
}