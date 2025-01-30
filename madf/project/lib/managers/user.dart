class User {
  late final String name;
  late final String email;
  late final String phone;

  User({this.name = "", this.email = "", this.phone = ""});
}

class UserManager {
  static List<User> users = [
    User(name: "Soham", email: "soham@gmail.com", phone: "9016600000"),
    User(name: "Rahul", email: "rahul@gmail.com", phone: "1234567890"),
    User(name: "Harsh", email: "harsh@gmail.com", phone: "1234567890"),
  ];

  static void addUser(User user) {
    users.add(user);
  }

  static List<User> getUsers() {
    return users;
  }

  static void deleteUserById(int index) {
    users.removeAt(index);
  }

  static void updateUserById(int index, User user) {
    if (index >= 0 && index < users.length) {
      users[index] = user;
    }
  }

  static List<User> searchUsers(String query) {
    return users.where((user) => user.name.contains(
      RegExp(query, caseSensitive: false),
    ) || user.email.contains(
      RegExp(query, caseSensitive: false),
    ) || user.phone.contains(
      RegExp(query, caseSensitive: false),
    )).toList();
  }
}
