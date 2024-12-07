// WAP  to  read  marks  of  five  subjects.  Calculate  percentage  and  print  class  accordingly.  Fail below 35, Pass Class between 35 to 45, Second Class between 45 to 60, First Class between 60 to 70, Distinction if more than 70.

import 'dart:io';

const num MAX_MARKS = 70;

String getClass(num marks) {
  if (marks < 35) return "Fail";
  if (marks < 45) return "Pass Class";
  if (marks < 60) return "Second Class";
  if (marks < 70) return "First Class";
  return "Distinction";
}

void main() {
  Map<String, num> data = {};

  while (true) {
    stdout.write("Enter subject name or d to done or q to exit : ");
    String sub = stdin.readLineSync()!;

    if (sub.toLowerCase() == "d") {
      num total = 0;
      for (dynamic key in data.keys) {
        print("$key : ${getClass(data[key]!)}");
        total += data[key]!;
      }
      print('Total : ${total}');
      print(
          'Percentage : ${(total * 100 / (MAX_MARKS * data.keys.length)).toStringAsFixed(2)}%');

      exit(1);
    }

    if (sub.toLowerCase() == "q") {
      exit(1);
    }

    stdout.write("Enter marks for the $sub : ");
    num marks = num.parse(stdin.readLineSync()!);

    if (marks > 70 || marks < 0)
      print("Marks not valid");
    else
      data[sub] = marks;
  }
}
