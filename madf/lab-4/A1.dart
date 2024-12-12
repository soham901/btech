import 'dart:io';

void main() {
  stdout.write("Enter principle amount, interest rate and time period : ");
  num principleAmount = int.parse(stdin.readLineSync()!);

  stdout.write("Enter interest rate and time period : ");
  num interestRate = int.parse(stdin.readLineSync()!);

  stdout.write("Enter time period : ");
  num timePeriod = int.parse(stdin.readLineSync()!);

  print(calcInterest(principleAmount, interestRate, timePeriod));
}

num calcInterest(num principleAmount, num interestRate, num timePeriod) {
  return principleAmount + (principleAmount * interestRate * timePeriod) / 100;
}
