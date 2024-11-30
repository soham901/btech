import 'dart:io';

void main() {
  print("Hello World");

  stdout.write("Enter a : ");

  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Enter b : ");

  int b = int.parse(stdin.readLineSync()!);

  print("sum : ${a + b}");
}
