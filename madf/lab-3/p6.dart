// sum of odd and even num in while loop
import 'dart:io';

void main() {
  int esum = 0, osum = 0;
  while (true) {
    stdout.write('Enter a num (0 to quite): ');
    int n = int.parse(stdin.readLineSync()!);
    if (n == 0) {
      print("Even sum: $esum\nOdd sum: $osum");
      exit(1);
    }
    if (n % 2 == 0) {
      esum += n;
    } else {
      osum += n;
    }
  }
}
