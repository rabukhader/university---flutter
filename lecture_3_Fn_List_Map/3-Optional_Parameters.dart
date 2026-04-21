// Optional parameters mean the function can work even if some values are not sent.
//
// There are two types:
//
// optional positional
// optional named

// A. Optional positional parameters
// They are written inside []
//
// void greet(String name, [String? city]) {
//   print("Name: $name");
//   print("City: $city");
// }
//
// void main() {
//   greet("Ahmad", "Hebron");
//   greet("Sara");
// }
// Output
// Name: Ahmad
// City: Hebron
// Name: Sara
// City: null


// B. Optional named parameters
// They are written inside {}
//
// void greet({String? name, int? age}) {
//   print("Name: $name");
//   print("Age: $age");
// }
//
// void main() {
//   greet(name: "Rasheed", age: 24);
//   greet(name: "Lina");
// }
// Output
// Name: Rasheed
// Age: 24
// Name: Lina
// Age: null


// Named parameters with default values
// void greet({String name = "Guest"}) {
//   print("Hello, $name");
// }
//
// void main() {
//   greet(name: "Ahmad");
//   greet();
// }
// Output
// Hello, Ahmad
// Hello, Guest