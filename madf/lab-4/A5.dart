import 'dart:io';

void main() {
  stdout.write("Enter n : ");
  int n = int.parse(stdin.readLineSync()!);

  List<int> arr = [];
  for (var i = 0; i < n; i++) {
    stdout.write("Enter ${i + 1} number : ");
    arr.add(int.parse(stdin.readLineSync()!));
  }

  List<List<int>> result = evenOdd(arr);

  print("Odd : ${result[0]}");
  print("Even : ${result[1]}");
}

List<List<int>> evenOdd(List<int> arr) {
  List<int> odd = [];
  List<int> even = [];
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] % 2 == 0) {
      even.add(arr[i]);
    } else {
      odd.add(arr[i]);
    }
  }
  return [odd, even];
}
