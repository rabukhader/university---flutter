// What is control flow?
//
// Control flow means deciding which code should run and how many times it should run.
//
// This includes:
//
// if
// if else
// else if
// switch
// loops like for and while
// A. if statement
//
// Used when you want to run code only if a condition is true.
//
// void main() {
//   int age = 20;
//
//   if (age >= 18) {
//     print("You are an adult");
//   }
// }
// B. if else statement
//
// Used when there are two choices.
//
// void main() {
//   int mark = 40;
//
//   if (mark >= 50) {
//     print("Pass");
//   } else {
//     print("Fail");
//   }
// }
// C. else if statement
//
// Used when there are many conditions.
//
// void main() {
//   int mark = 85;
//
//   if (mark >= 90) {
//     print("Excellent");
//   } else if (mark >= 75) {
//     print("Very Good");
//   } else if (mark >= 50) {
//     print("Pass");
//   } else {
//     print("Fail");
//   }
// }
// D. switch statement
//
// Used when checking one variable against several exact values.
//
// void main() {
//   String day = "Monday";
//
//   switch (day) {
//     case "Saturday":
//       print("Weekend");
//       break;
//     case "Monday":
//       print("Start of the week");
//       break;
//     case "Friday":
//       print("Almost weekend");
//       break;
//     default:
//       print("Normal day");
//   }
// }
// E. for loop
//
// Used when you know how many times to repeat.
//
// void main() {
//   for (int i = 1; i <= 5; i++) {
//     print(i);
//   }
// }
// Output
// 1
// 2
// 3
// 4
// 5
// F. while loop
//
// Used when the loop depends on a condition.
//
// void main() {
//   int i = 1;
//
//   while (i <= 5) {
//     print(i);
//     i++;
//   }
// }
// G. break
//
// Stops the loop.
//
// void main() {
//   for (int i = 1; i <= 10; i++) {
//     if (i == 5) {
//       break;
//     }
//     print(i);
//   }
// }
//
// Output:
//
// 1
// 2
// 3
// 4
// H. continue
//
// Skips one round only.
//
// void main() {
//   for (int i = 1; i <= 5; i++) {
//     if (i == 3) {
//       continue;
//     }
//     print(i);
//   }
// }
//
// Output:
//
// 1
// 2
// 4
// 5
// Full Combined Example
//
// This example uses variables, data types, operators, and control flow together:
//
// void main() {
//   String studentName = "Ahmad";
//   int mark1 = 80;
//   int mark2 = 70;
//
//   int total = mark1 + mark2;
//   double average = total / 2;
//
//   print("Student Name: $studentName");
//   print("Total: $total");
//   print("Average: $average");
//
//   if (average >= 90) {
//     print("Grade: Excellent");
//   } else if (average >= 75) {
//     print("Grade: Very Good");
//   } else if (average >= 50) {
//     print("Grade: Pass");
//   } else {
//     print("Grade: Fail");
//   }
// }