import 'package:flutter/material.dart';
import 'package:project/managers/user.dart';

class UsersListScreen extends StatefulWidget {
  const UsersListScreen({super.key});

  @override
  State<UsersListScreen> createState() => _UsersListScreenState();
}

class _UsersListScreenState extends State<UsersListScreen> {
  TextEditingController searchQuery = TextEditingController();
  
  List<User> users = [];

  @override
  void initState() {
    super.initState();
    users = UserManager.getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User List (${UserManager.users.length})"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  users = UserManager.searchUsers(value);
                });
              },
              decoration: InputDecoration(
                labelText: "Search",
                hintText: "Search users by anything",
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(onPressed: () {
                  searchQuery.clear();
                  setState(() {
                    users = UserManager.getUsers();
                  });
                }, icon: const Icon(Icons.clear)),
              ),
              controller: searchQuery,
            ),
          ),
          Expanded(
            child: Center(
                child: users.isEmpty ? Text("No users found") : ListView.builder(
              itemBuilder: (context, index) {
                User user = users[index];
                return ListTile(
                  title: Text(user.name),
                  subtitle: Text(user.email),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          UserManager.deleteUserById(index);
                          setState(() {});
                        },
                        icon: const Icon(Icons.delete),
                      ),
                      IconButton(
                        onPressed: () {
                          TextEditingController nameController =
                              TextEditingController(text: user.name);
                          TextEditingController emailController =
                              TextEditingController(text: user.email);
                          TextEditingController phoneController =
                              TextEditingController(text: user.phone);

                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text("Edit User"),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
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
                                    ],
                                  ),
                                  actions: [
                                    ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text("Close")),
                                    ElevatedButton(
                                        onPressed: () {
                                          UserManager.updateUserById(
                                              index,
                                              User(
                                                  name: nameController.text,
                                                  email: emailController.text,
                                                  phone: phoneController.text));
                                          // if (isDeleteed) {
                                          setState(() {});
                                          Navigator.pop(context);
                                          // }
                                        },
                                        child: const Text("Edit"))
                                  ],
                                );
                              });
                          // Navigator.pushNamed(context, "/users/edit", arguments: {
                          //   'id': index,
                          // });
                        },
                        icon: const Icon(Icons.edit),
                      ),
                    ],
                  ),
                );
              },
              itemCount: users.length,
            )),
          ),
        ],
      ),
    );
  }
}
