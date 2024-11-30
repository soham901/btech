import 'dart:io';

void main() {
  // print the following pattern
  //       *
  //     * * *
  //   * * * * *
  // * * * * * * *

  int n = 5;

  for (var i = 0; i < n; i++) {
    for (var j = n - 1; j >= i; j--) {
      stdout.write("  ");
    }
    for (var k = 1; k < i * 2; k++) {
      stdout.write("* ");
    }
    print("");
  }

  print("");
}
