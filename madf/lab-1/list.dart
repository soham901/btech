void main() {
  List<int> numList = [10,20,30,40,50];
  List<String> strList = ["Hello", "World"];

  print(numList);
  print(strList.join(" "));

  strList = "back welcome".split(" ").reversed.toList();
  strList.add("to");
  strList.add("the");
  strList.add("world");
  print(strList);
}