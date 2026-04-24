// A constructor helps us create an object and give it values directly.
//
// Example
// class Student {
//   String name;
//   int age;
//
//   Student(this.name, this.age);
//
//   void introduce() {
//     print("My name is $name and I am $age years old");
//   }
// }
//
// void main() {
//   Student student1 = Student("Ahmad", 20);
//   Student student2 = Student("Sara", 22);
//
//   student1.introduce();
//   student2.introduce();
// }

// Student(this.name, this.age); is the constructor
// when we create the object, we send the values immediately

// The constructor is a fast way to fill the object with data when we create it.

//Named constructor simple note
// class Student {
//   String name;
//   int age;
//
//   Student(this.name, this.age);
//
//   Student.youngStudent(String studentName)
//       : name = studentName,
//         age = 18;
//
//   void introduce() {
//     print("My name is $name and I am $age years old");
//   }
// }
//
// void main() {
//   Student s1 = Student("Ali", 21);
//   Student s2 = Student.youngStudent("Omar");
//
//   s1.introduce();
//   s2.introduce();
// }
//
