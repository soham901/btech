import 'package:flutter/material.dart';

class Lab11_p1 extends StatefulWidget {
  const Lab11_p1({super.key});

  @override
  State<Lab11_p1> createState() => _Lab11_p1State();
}

class _Lab11_p1State extends State<Lab11_p1> {
  List<String> cities = [
    "Rajkot",
    "Ahmedabad",
    "Surat",
    "Vadodara",
    "Gandhinagar",
    "Bhavnagar",
    "Junagadh",
    "Jamnagar",
    "Valsad",
    "Nadiad",
    "Morbi",
    "Mehsana",
    "Patan",
    "Anand",
    "Bhuj",
    "Navsari",
    "Kutch",
    "Bharuch",
    "Surendranagar",
    "Dahod"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, idx) => listItem(cities[idx]),
      itemCount: cities.length,
    );
  }

  Widget listItem(String city) {
    return ListTile(
      shape: Border.all(color: Colors.black, width: 12),
      title: Text(city),
    );
  }
}
