// range divisible by 2 and not 3
import 'dart:io';

void main () {
  stdout.write('Enter start: ');
  int a = int.parse(stdin.readLineSync()!);
  stdout.write('Enter end: ');
  int b = int.parse(stdin.readLineSync()!);

  for (var i = a; i <= b; i++) {
    if (i % 2 == 0 && i % 3 != 0) {
      stdout.write('$i ');
    }
  }
}