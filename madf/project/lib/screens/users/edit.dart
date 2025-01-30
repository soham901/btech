import 'package:flutter/material.dart';

class EditUserScreen extends StatefulWidget {
  const EditUserScreen({super.key});

  @override
  State<EditUserScreen> createState() => _EditUserScreenState();
}

class _EditUserScreenState extends State<EditUserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit User "),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: "Name",
                hintText: "Enter your name",
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: "Email",
                hintText: "Enter your email",
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: "Phone",
                hintText: "Enter your phone",
              ),
            ),
            ElevatedButton(onPressed: () {
              Navigator.pop(context);
            }, child: const Text("Update User"))
          ],
        )
      ),
    );
  }
}