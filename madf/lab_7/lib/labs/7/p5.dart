import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class P5 extends StatelessWidget {
  const P5({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    return Column(
      children: [
        TextField(
          controller: controller,
        ),
        ElevatedButton(
          onPressed: () {
            if (kDebugMode) {
              print(controller.text);
            }
          },
          child: const Text('SUBMIT'),
        ),
      ],
    );
  }
}
