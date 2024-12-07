// WAP to find out largest number from given three numbers without using Logical Operator.

import 'dart:io';

num getMax(a, b, c) {
  return a > b
      ? a > c
          ? a
          : c
      : c > a
          ? (b > c)
              ? b
              : c
          : a;
}

void test() {
  assert(getMax(10, 20, 30) == 30, "last");
  assert(getMax(10, 30, 20) == 30, "mid");
  assert(getMax(30, 10, 20) == 30, "first");
}

void main() {
  test();

  stdout.write("Enter a : ");
  num a = num.parse(stdin.readLineSync()!);
  stdout.write("Enter b : ");
  num b = num.parse(stdin.readLineSync()!);
  stdout.write("Enter c : ");
  num c = num.parse(stdin.readLineSync()!);

  num max = getMax(a, b, c);

  print(max);
}
