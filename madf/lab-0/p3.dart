import 'dart:io';

void main(List<String> args) {
  void fibo(int n) {
    stdout.write(0);
    stderr.write(" ");
    stdout.write(1);

    int f = 0, s = 1;

    for (var i = 2; i < n; i++) {
      int sum = f + s;
      stderr.write(" ");
      stdout.write(sum);
      f = s;
      s = sum;
    }

    print("");
  }

  fibo(50);
}
