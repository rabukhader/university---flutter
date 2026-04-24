// In Dart, arrays are called Lists.
// A list stores multiple values in one variable.
//
// Example
// void main() {
//   List<String> names = ["Ahmad", "Sara", "Lina"];
//   print(names);
// }
// Access items by index
// void main() {
//   List<String> names = ["Ahmad", "Sara", "Lina"];
//
//   print(names[0]);
//   print(names[1]);
// }
// Output
// Ahmad
// Sara
// Add item to list
// void main() {
//   List<String> names = ["Ahmad", "Sara"];
//   names.add("Lina");
//
//   print(names);
// }
// Remove item from list
// void main() {
//   List<String> names = ["Ahmad", "Sara", "Lina"];
//   names.remove("Sara");
//
//   print(names);
// }
// List length
// void main() {
//   List<int> numbers = [10, 20, 30, 40];
//   print(numbers.length);
// }
// Loop through list
// void main() {
//   List<String> students = ["Ali", "Mona", "Noor"];
//
//   for (int i = 0; i < students.length; i++) {
//     print(students[i]);
//   }
// }
// Using forEach
// void main() {
//   List<String> students = ["Ali", "Mona", "Noor"];
//
//   students.forEach((student) {
//     print(student);
//   });
// }
// Real example
// void main() {
//   List<int> marks = [80, 75, 90];
//
//   int total = marks[0] + marks[1] + marks[2];
//   print("Total = $total");
// }