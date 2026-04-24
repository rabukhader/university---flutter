// Polymorphism means the same method name can behave differently in different classes.
//
// A. Method Overriding
// Example
// class Animal {
//   void makeSound() {
//     print("Animal makes a sound");
//   }
// }
//
// class Dog extends Animal {
//   @override
//   void makeSound() {
//     print("Dog barks");
//   }
// }
//
// class Cat extends Animal {
//   @override
//   void makeSound() {
//     print("Cat meows");
//   }
// }
//
// void main() {
//   Dog dog = Dog();
//   Cat cat = Cat();
//
//   dog.makeSound();
//   cat.makeSound();
// }

// all classes have makeSound()
// but each class changes it in its own way
// What to say
//
// Same method name, different behavior.
// This is polymorphism.
//

//B. Method Overloading
// Dart does not support traditional method overloading like Java or C#.
//
// Important note:
// In some languages, overloading means making many methods with the same name but different parameters.
// Dart does not support this directly.
// Instead, we usually use optional parameters or named parameters.
//
// Example alternative
// class Printer {
//   void printMessage(String message, {String prefix = ""}) {
//     print("$prefix$message");
//   }
// }
//
// void main() {
//   Printer printer = Printer();
//   printer.printMessage("Hello");
//   printer.printMessage("Hello", prefix: "Important: ");
// }