
abstract class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);

  void displayRole();

  Future<String> saveRecord() async {
    print("Saving employee record for $name...");

    await Future.delayed(Duration(seconds: 2));

    return "Employee record for $name saved successfully.";
  }
}

mixin WorkReport {
  void showReport() {
    print("Work report: Completed assigned tasks.");
  }
}

class Manager extends Employee with WorkReport {
  Manager(String name, double salary) : super(name, salary);

  @override
  void displayRole() {
    print("Manager: $name");
    print("Salary: PHP ${salary.toStringAsFixed(2)}");
    print("Role: Manages the team.");
  }
}

class Developer extends Employee with WorkReport {
  Developer(String name, double salary) : super(name, salary);

  @override
  void displayRole() {
    print("Developer: $name");
    print("Salary: PHP ${salary.toStringAsFixed(2)}");
    print("Role: Develops software applications.");
  }
}

Future<void> main() async {
  Employee employee = Developer("Melchor", 25000);

  employee.displayRole();
  print("Starting employee record process...");

  Future<String> result = employee.saveRecord();

  print("The program can continue while waiting.");

  String message = await result;

  print(message);
  print("Process completed.");
}
