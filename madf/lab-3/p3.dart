// prime or not
import 'dart:io';

void main() {
  stdout.write('Enter a num: ');
  int n = int.parse(stdin.readLineSync()!);
  bool flag = true;
  for (var i = 2; i < n; i++) {
    if (n % i == 0) {
      flag = false;
    }
  }

  print('$n is ${flag?'':'Not '}Prime');
}