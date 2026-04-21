// A map stores data in key-value pairs.
//
// Example:
//
// "name" → "Ahmad"
// "age" → 20
// Basic map example
// void main() {
//   Map<String, dynamic> student = {
//     "name": "Ahmad",
//     "age": 20,
//     "isPassed": true,
//   };
//
//   print(student);
// }
// Access map values
// void main() {
//   Map<String, dynamic> student = {
//     "name": "Ahmad",
//     "age": 20,
//     "isPassed": true,
//   };
//
//   print(student["name"]);
//   print(student["age"]);
// }
// Output
// Ahmad
// 20
// Add new value
// void main() {
//   Map<String, dynamic> student = {
//     "name": "Ahmad",
//     "age": 20,
//   };
//
//   student["city"] = "Hebron";
//
//   print(student);
// }
// Update value
// void main() {
//   Map<String, dynamic> student = {
//     "name": "Ahmad",
//     "age": 20,
//   };
//
//   student["age"] = 21;
//
//   print(student);
// }
// Remove value
// void main() {
//   Map<String, dynamic> student = {
//     "name": "Ahmad",
//     "age": 20,
//     "city": "Hebron",
//   };
//
//   student.remove("city");
//
//   print(student);
// }
// Real example
// void main() {
//   Map<String, dynamic> product = {
//     "name": "Laptop",
//     "price": 2500,
//     "inStock": true,
//   };
//
//   print("Product: ${product["name"]}");
//   print("Price: ${product["price"]}");
// }