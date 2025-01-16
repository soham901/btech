// Write a flutter code scroll whole screen content using single child scrollview.

import 'package:flutter/material.dart';

class P1 extends StatefulWidget {
  const P1({super.key});

  @override
  State<P1> createState() => _P1State();
}

class _P1State extends State<P1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 500,
              width: 500,
              color: Colors.deepPurple,
            ),
            Container(
              height: 500,
              width: 500,
              color: Colors.deepOrange,
            ),
            Container(
              height: 500,
              width: 500,
              color: Colors.yellowAccent,
            ),
            Container(
              height: 500,
              width: 500,
              color: Colors.redAccent,
            )
          ],
        ),
      ),
    );
  }
}
