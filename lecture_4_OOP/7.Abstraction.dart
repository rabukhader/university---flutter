// Abstraction means showing only the important parts and hiding the complex details.
//
// Real-life example
// When you drive a car:
// you use steering wheel
// brake
// accelerator
//
// You do not need to know how the engine works internally.
//
// Example
// abstract class Shape {
//   double area();
// }
//
// class Rectangle extends Shape {
//   double width;
//   double height;
//
//   Rectangle(this.width, this.height);
//
//   @override
//   double area() {
//     return width * height;
//   }
// }
//
// void main() {
//   Rectangle rect = Rectangle(5, 4);
//   print(rect.area());
// }

// Shape is abstract
// it says every shape must have area()
// but it does not define how
// Rectangle provides the actual implementation

//
// Abstraction means we define the idea first, then each class gives its own details.