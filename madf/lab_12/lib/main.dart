import 'package:flutter/material.dart';
import 'package:lab_12/practicals/p1.dart';
import 'package:lab_12/practicals/p2.dart';
import 'package:lab_12/practicals/p3.dart';

import 'practicals/p4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab 12',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const P4(),
    );
  }
}
