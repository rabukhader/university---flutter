void main() {
  Map<String, dynamic> student = {"name": "Ahmad", "age": 20, "isPassed": true};

  print(student);

  student["city"] = "Hebron";
  print(student);
  student.addAll({"test": "test", "num": 18});
  print(student);
  student.remove("city");
  student.remove("11");
  print(student);
  print(student.keys);
  print(student.values);
  student.clear();

  print(student.isEmpty);

  print(student.length);
}
