void main(List<String> args) {
  bool isPrime(int n) {
    for (var i = 2; i < n - 1; i++) {
      if (n % i == 0) return false;
    }
    return true;
  }

  print("5 is ${isPrime(5) ? "" : "not "}prime");
  print("14 is ${isPrime(14) ? "" : "not "}prime");
}
