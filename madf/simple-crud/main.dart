import 'dart:io';

int currentId = 1;

List<String> FIELDS = ["name", "email"];

List<dynamic> data = [
  {"id": currentId++, "name": "Soham", "email": "soham@gmail.com"},
  {"id": currentId++, "name": "Sandip", "email": "sandip@gmail.com"},
];

void main() {
  String ip = takeChoiceInput();

  while (ip != "q") {
    switch (ip) {
      case "a":
        stdout.write("Enter your name : ");
        String name = stdin.readLineSync()!;

        stdout.write("Enter your email : ");
        String email = stdin.readLineSync()!;

        add(email, name);

        break;

      case "s":
        String name;
        do {
          print("\x1B[2J\x1B[0;0H");
          stdout.write("Search by name : ");
          name = stdin.readLineSync()!;

          RegExp nameReg = new RegExp(
            name,
            caseSensitive: false,
          );

          data.forEach((rec) {
            String? res = nameReg.stringMatch(rec['name']);

            if (res != null) {
              print(rec);
            }
          });

          if (name != "q") stdin.readLineSync();
        } while (name != "q");

      case "r":
        print("-------------------------------------");
        print("ID  Name\tEmail");
        data.forEach((rec) {
          print("${rec["id"]} : ${rec["name"]} : ${rec["email"]}");
        });
        print("-------------------------------------");
        break;

      case "e":
        stdout.write("Enter the id to be edited : ");
        int id = int.parse(stdin.readLineSync()!);

        if (!updateByID(id)) {
          print("Record not found");
        }

        break;

      case "d":
        stdout.write("Enter the id to be deleted : ");
        int id = int.parse(stdin.readLineSync()!);
        data.removeWhere((rec) => rec["id"] == id);
        break;

      default:
        print("Invalid choice");
    }

    ip = takeChoiceInput();
  }
}

void add(String email, String name) {
  data.add({"id": currentId++, "email": email, "name": name});
}

bool updateByID(int id) {
  // bool isFound = false;
  bool isFound = data.indexWhere((rec) => rec['id'] == id) != -1;

  if (!isFound) return false;

  print("Choose field to edit");
  int i = 1;
  FIELDS.forEach((field) {
    print("$i. $field");
    i++;
  });

  int fieldIdx = int.parse(stdin.readLineSync()!);

  String field = FIELDS[fieldIdx - 1];

  data.forEach((rec) {
    if (rec["id"] == id) {
      stdout.write("Enter new value for $field : ");
      String value = stdin.readLineSync()!;
      rec[field] = value;
      // isFound = true;
    }
  });

  return isFound;
}

String takeChoiceInput() {
  stdout.write(
      "----------------------------\na to add an record\nr to read all\ne to edit\nd to delete\ns for search\nq to quit\nEnter your choice : ");
  return stdin.readLineSync()!;
}
