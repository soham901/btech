// WAP  to  perform  Addition,  Subtraction,  Multiplication,  Division  based  on  user  choice  using  if, if..else..if, & switch.

import 'dart:io';

num ifLogic(op) {
  if (op == "a") {
    stdout.write("Enter a : ");
    int a = int.parse(stdin.readLineSync()!);
    stdout.write("Enter b : ");
    int b = int.parse(stdin.readLineSync()!);
    return a + b;
  }
  if (op == "s") {
    stdout.write("Enter a : ");
    int a = int.parse(stdin.readLineSync()!);
    stdout.write("Enter b : ");
    int b = int.parse(stdin.readLineSync()!);
    return a - b;
  }
  if (op == "m") {
    stdout.write("Enter a : ");
    int a = int.parse(stdin.readLineSync()!);
    stdout.write("Enter b : ");
    int b = int.parse(stdin.readLineSync()!);
    return a * b;
  }
  if (op == "d") {
    stdout.write("Enter a : ");
    int a = int.parse(stdin.readLineSync()!);
    stdout.write("Enter b : ");
    int b = int.parse(stdin.readLineSync()!);
    return a / b;
  }
  if (op == "e") {
    exit(1);
  }
  return 0;
}

num ifElseLogic(op) {
  if (op == "a") {
    stdout.write("Enter a : ");
    int a = int.parse(stdin.readLineSync()!);
    stdout.write("Enter b : ");
    int b = int.parse(stdin.readLineSync()!);
    return a + b;
  } else if (op == "s") {
    stdout.write("Enter a : ");
    int a = int.parse(stdin.readLineSync()!);
    stdout.write("Enter b : ");
    int b = int.parse(stdin.readLineSync()!);
    return a - b;
  } else if (op == "m") {
    stdout.write("Enter a : ");
    int a = int.parse(stdin.readLineSync()!);
    stdout.write("Enter b : ");
    int b = int.parse(stdin.readLineSync()!);
    return a * b;
  } else if (op == "d") {
    stdout.write("Enter a : ");
    int a = int.parse(stdin.readLineSync()!);
    stdout.write("Enter b : ");
    int b = int.parse(stdin.readLineSync()!);
    return a / b;
  } else if (op == "e") {
    exit(1);
  } else {
    print("Invalid choice");
    return 0;
  }
}

num switchLogic(op) {
  switch (op) {
    case "a":
      stdout.write("Enter a : ");
      int a = int.parse(stdin.readLineSync()!);
      stdout.write("Enter b : ");
      int b = int.parse(stdin.readLineSync()!);
      return a + b;
    case "s":
      stdout.write("Enter a : ");
      int a = int.parse(stdin.readLineSync()!);
      stdout.write("Enter b : ");
      int b = int.parse(stdin.readLineSync()!);
      return a - b;
    case "m":
      stdout.write("Enter a : ");
      int a = int.parse(stdin.readLineSync()!);
      stdout.write("Enter b : ");
      int b = int.parse(stdin.readLineSync()!);
      return a * b;
    case "d":
      stdout.write("Enter a : ");
      int a = int.parse(stdin.readLineSync()!);
      stdout.write("Enter b : ");
      int b = int.parse(stdin.readLineSync()!);
      return a / b;
    case "e":
      exit(1);
    default:
      print("Invalid choice");
      return 0;
  }
}

void main() {
  while (true) {
    stdout.write(
        "\na for addition\ns for subtraction\nm for multiplication\nd for division\ne for exit\nChoose your choice : ");
    String op = (stdin.readLineSync()!).toLowerCase();

    num res = ifLogic(op);

    print("result : $res");
  }
}
