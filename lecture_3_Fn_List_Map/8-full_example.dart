void greetStudent(String name, {String city = "Unknown"}) {
  print("Hello $name from $city");
}

int multiply(int a, int b) => a * b;

void main() {
  greetStudent("Ahmad", city: "Hebron");
  print("Multiplication result: ${multiply(4, 5)}");

  List<String> students = ["Ali", "Mona", "Noor"];
  students.forEach((student) {
    print("Student: $student");
  });

  Map<String, dynamic> course = {
    "title": "Flutter",
    "hours": 40,
  };

  print("Course: ${course["title"]}");
  print("Hours: ${course["hours"]}");
}