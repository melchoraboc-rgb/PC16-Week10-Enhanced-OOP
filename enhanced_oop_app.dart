abstract class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);

  void displayRole();
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

void main() {
  List<Employee> employees = [
    Manager("Melchor", 30000),
    Developer("Alex", 25000),
  ];

  for (Employee employee in employees) {
    employee.displayRole();
    (employee as dynamic).showReport();
    print("--------------------");
  }
}
