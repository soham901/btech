// WAP to find maximum number from given two numbers using method.

import 'dart:io';

void main() {
  stdout.write("Enter a : ");
  num a = num.parse(stdin.readLineSync()!);
  stdout.write("Enter b : ");
  num b = num.parse(stdin.readLineSync()!);
  print(max(x: a, y: b));
}

num max({required num x, required num y}) {
  return x > y ? x : y;
}
