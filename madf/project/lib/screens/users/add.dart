import 'package:flutter/material.dart';
import 'package:project/managers/user.dart';

class AddUserScreen extends StatefulWidget {
  const AddUserScreen({super.key});

  @override
  State<AddUserScreen> createState() => _AddUserScreenState();
}

class _AddUserScreenState extends State<AddUserScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add User"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: "Name",
                hintText: "Enter your name",
              ),
            ),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: "Email",
                hintText: "Enter your email",
              ),
            ),
            TextField(
              controller: phoneController,
              decoration: const InputDecoration(
                labelText: "Phone",
                hintText: "Enter your phone",
              ),
            ),
            ElevatedButton(onPressed: () {
              User user = User(email: emailController.text, name: nameController.text, phone: phoneController.text);
              UserManager.addUser(user);
              Navigator.pop(context);
            }, child: const Text("Add User"))
          ],
        )
      ),
    );
  }
}

