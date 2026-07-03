import 'dart:convert';
import 'package:http/http.dart' as http;

class UserModel {
  final String name;
  final String email;

  UserModel({
    required this.name,
    required this.email,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      email: json['email'],
    );
  }
}

Future<List<UserModel>> fetchUsers() async {
  final response = await http.get(
    Uri.parse('https://jsonplaceholder.typicode.com/users'),
  );

  if (response.statusCode == 200) {
    final List<dynamic> data = jsonDecode(response.body);

    return data.map((user) => UserModel.fromJson(user)).toList();
  } else {
    throw Exception('Failed to load users');
  }
}