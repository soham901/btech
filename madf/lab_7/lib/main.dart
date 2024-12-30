import 'package:flutter/material.dart';

import 'labs/7/p1.dart';
import 'labs/7/p2.dart';
import 'labs/7/p3.dart';
import 'labs/7/p5.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: P5(),
        ),
      ),
    );
  }
}
