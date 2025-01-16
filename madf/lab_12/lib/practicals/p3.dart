// Write  a  flutter  code  to  get  current  date  from  system  and  format  into  different  date  formats.
// Ex.
// dd/MM/yyyy
// dd-MM-yyyy
// dd-MMM-yyyy
// dd-MM-yy
// dd MMM, yyyy
// etc.

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import "package:jiffy/jiffy.dart";

class P3 extends StatefulWidget {
  const P3({super.key});

  @override
  State<P3> createState() => _P3State();
}

class _P3State extends State<P3> {
  String currentFormat = "dd/MM/yyyy";
  String currentDate = Jiffy.now().format(pattern: "dd/MM/yyyy");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              DropdownButton<String>(
                value: "dd/MM/yyyy",
                items: const [
                  DropdownMenuItem(
                      value: "dd/MM/yyyy", child: Text("dd/MM/yyyy")),
                  DropdownMenuItem(
                      value: "dd-MM-yyyy", child: Text("dd-MM-yyyy")),
                  DropdownMenuItem(
                      value: "dd-MMM-yyyy", child: Text("dd-MMM-yyyy")),
                  DropdownMenuItem(value: "dd-MM-yy", child: Text("dd-MM-yy")),
                  DropdownMenuItem(
                      value: "dd MMM, yyyy", child: Text("dd MMM, yyyy")),
                  DropdownMenuItem(
                      value: "dd MMMM, yyyy", child: Text("dd MMMM, yyyy")),
                  DropdownMenuItem(
                      value: "yyyy-MM-dd", child: Text("yyyy-MM-dd")),
                  DropdownMenuItem(
                      value: "yyyy-MM-dd HH:mm:ss",
                      child: Text("yyyy-MM-dd HH:mm:ss")),
                ],
                onChanged: (value) {
                  setState(() {
                    currentFormat = value!;
                    currentDate = Jiffy.now().format(pattern: currentFormat);
                  });
                },
              ),
              Text(
                currentDate,
                style: const TextStyle(fontSize: 20),
              ),
            ],
          )),
    );
  }
}
