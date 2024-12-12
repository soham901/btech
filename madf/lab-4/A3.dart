// WAPT to generate Fibonacci series of N given number using method with default params

import 'dart:io';

void main() {
  // stdout.write("Enter n : ");
  // int n = int.parse(stdin.readLineSync()!);
  // fibo(n, 2, 3);

  Stopwatch stopwatch = Stopwatch()..start();

  fibo(6969);
  // print("");

  stopwatch.stop();
  print("Execution time: ${stopwatch.elapsedMilliseconds} ms");
}

void fibo(int n, [int a = 0, int b = 1]) {
  // stdout.write(a);
  // stdout.write(" ");
  // stdout.write('$b ');
  int c = a + b;

  for (int i = 0; i < n - 2; i++) {
    c = a + b;
    // stdout.write('$c ');
    a = b;
    b = c;
  }
}
