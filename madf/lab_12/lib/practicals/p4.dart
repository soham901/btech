// Write a flutter code get date frod date picker dialog and display in textview.

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import "package:jiffy/jiffy.dart";

class P4 extends StatefulWidget {
  const P4({super.key});

  @override
  State<P4> createState() => _P4State();
}

class _P4State extends State<P4> {
  DateTime currentDate = DateTime.now();
  String currentFormat = "dd/MM/yyyy";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
                  });
                }),
            ElevatedButton(
                onPressed: () {
                  showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2100))
                      .then((value) {
                    if (value != null) {
                      setState(() {
                        currentDate = value;
                      });
                    }
                  });
                },
                child: const Text("Select Date")),
            Text(Jiffy.parseFromDateTime(currentDate)
                .format(pattern: currentFormat))
          ],
        ),
      ),
    );
  }
}
