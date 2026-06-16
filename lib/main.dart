import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void main() {
  runApp(const MyApp());
}

class Student {
  final int? id;
  final String name;
  final int age;

  Student({
    this.id,
    required this.name,
    required this.age,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'age': age,
    };
  }

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      id: map['id'],
      name: map['name'],
      age: map['age'],
    );
  }
}

class DatabaseHelper {
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDatabase();
    return _database!;
  }

  Future<Database> initDatabase() async {
    String path = join(await getDatabasesPath(), 'students.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE students(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT,
            age INTEGER
          )
        ''');
      },
    );
  }

  Future<void> insertStudent(Student student) async {
    final db = await database;
    await db.insert('students', student.toMap());
  }

  Future<List<Student>> getStudents() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('students');

    return List.generate(maps.length, (index) {
      return Student.fromMap(maps[index]);
    });
  }

  Future<void> updateStudent(Student student) async {
    final db = await database;
    await db.update(
      'students',
      student.toMap(),
      where: 'id = ?',
      whereArgs: [student.id],
    );
  }

  Future<void> deleteStudent(int id) async {
    final db = await database;
    await db.delete(
      'students',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StudentDatabaseScreen(),
    );
  }
}

class StudentDatabaseScreen extends StatefulWidget {
  const StudentDatabaseScreen({super.key});

  @override
  State<StudentDatabaseScreen> createState() => _StudentDatabaseScreenState();
}

class _StudentDatabaseScreenState extends State<StudentDatabaseScreen> {
  final DatabaseHelper dbHelper = DatabaseHelper();
  List<Student> students = [];

  @override
  void initState() {
    super.initState();
    loadStudents();
  }

  Future<void> loadStudents() async {
    final data = await dbHelper.getStudents();
    setState(() {
      students = data;
    });
  }

  Future<void> addStudent() async {
    await dbHelper.insertStudent(
      Student(name: "Ahmad", age: 20),
    );
    loadStudents();
  }

  Future<void> editFirstStudent() async {
    if (students.isNotEmpty) {
      final first = students.first;
      await dbHelper.updateStudent(
        Student(id: first.id, name: "Sara", age: 22),
      );
      loadStudents();
    }
  }

  Future<void> removeFirstStudent() async {
    if (students.isNotEmpty) {
      await dbHelper.deleteStudent(students.first.id!);
      loadStudents();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("sqflite Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: addStudent,
              child: const Text("Add Student"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: editFirstStudent,
              child: const Text("Update First Student"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: removeFirstStudent,
              child: const Text("Delete First Student"),
            ),
            const SizedBox(height: 20),
            const Text(
              "Students List",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(students[index].name),
                    subtitle: Text("Age: ${students[index].age}"),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}