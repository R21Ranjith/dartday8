import 'dart:io';

void main() {
  var phonebook = <String, String>{}; // Map<String, String>

  while (true) {
    print("\n--- Phonebook Menu ---");
    print("1. Add Contact");
    print("2. View Contacts");
    print("3. Update Contact");
    print("4. Delete Contact");
    print("5. Exit");
    stdout.write("Choose an option: ");
    var choice = stdin.readLineSync();

    switch (choice) {
      case '1': // Create
        stdout.write("Enter name: ");
        var name = stdin.readLineSync()!;
        stdout.write("Enter phone number: ");
        var number = stdin.readLineSync()!;
        phonebook[name] = number;
        print("Contact added.");
        break;

      case '2': // Read
        if (phonebook.isEmpty) {
          print("Phonebook is empty.");
        } else {
          print("\nContacts:");
          phonebook.forEach((name, number) {
            print("$name: $number");
          });
        }
        break;

      case '3': // Update
        stdout.write("Enter name to update: ");
        var name = stdin.readLineSync()!;
        if (phonebook.containsKey(name)) {
          stdout.write("Enter new number: ");
          var newNumber = stdin.readLineSync()!;
          phonebook[name] = newNumber;
          print("Contact updated.");
        } else {
          print("Contact not found.");
        }
        break;

      case '4': // Delete
        stdout.write("Enter name to delete: ");
        var name = stdin.readLineSync()!;
        if (phonebook.remove(name) != null) {
          print("Contact deleted.");
        } else {
          print("Contact not found.");
        }
        break;

      case '5': // Exit
        print("Exiting Phonebook...");
        return;

      default:
        print("Invalid option, try again.");
    }
  }
}
