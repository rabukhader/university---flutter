// Higher-Order Functions
// A higher-order function is a function that:
// takes another function as input, or
// returns another function

// Example 1: function takes another function
// void applyOperation(int a, int b, int Function(int, int) operation) {
//   print(operation(a, b));
// }
//
// int add(int x, int y) {
//   return x + y;
// }
//
// void main() {
//   applyOperation(4, 5, add);
// }
// Output
// 9


// Example 2: using anonymous function
// void applyOperation(int a, int b, int Function(int, int) operation) {
//   print(operation(a, b));
// }
//
// void main() {
//   applyOperation(6, 3, (x, y) {
//     return x * y;
//   });
// }
// Output
// 18


// Easy real-life example with forEach
// void main() {
//   List<String> students = ["Ali", "Mona", "Noor"];
//
//   students.forEach((student) {
//     print("Welcome $student");
//   });
// }
//
// forEach() is a higher-order function because it takes another function.