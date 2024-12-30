import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class P3 extends StatelessWidget {
  const P3({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    controller.addListener(() {
      if (kDebugMode) {
        print(controller.text);
      }
    });

    return TextField(
      controller: controller,
    );
  }
}
