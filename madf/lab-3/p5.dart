// String reverse
import 'dart:io';
void main() {
  stdout.write('Enter a string: ');
  String str = stdin.readLineSync()!;
  
  // for (var i = str.length-1; i >= 0; i--) {
  //   stdout.write(str[i]);
  // }
  
  print(str.split('').reversed.join());

}