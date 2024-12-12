// number in reverse

import 'dart:io';

void main() {
  stdout.write('Enter a num: ');
  int n = int.parse(stdin.readLineSync()!);

  int tmp = n;
  while (tmp != 0) {
    stdout.write(tmp%10);
    tmp ~/= 10;
  }
}
