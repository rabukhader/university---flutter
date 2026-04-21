class Person {
  String name;

  Person(this.name);

  void introduce() {
    print("I am $name");
  }
}

class Student extends Person {
  String major;

  Student(super.name, this.major);

  @override
  void introduce() {
    print("I am $name and I study $major");
  }
}

void main() {
  Student student = Student("Rasheed", "Computer Systems Engineering");
  student.introduce();
}
