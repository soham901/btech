// WAP  to accept  a  number and  check  whether  the  number  is  prime  or  not.  Use  method  name check (int n). The method returns 1, if the number is prime otherwise, it returns 0.

import 'dart:io';

void main() {
  stdout.write("Enter a : ");
  int a = int.parse(stdin.readLineSync()!);

  print(check(a));
}

int check(int n) {
  for (int i = 2; i < n; i++) {
    if (n % i == 0) return 0;
  }
  return 1;
}
