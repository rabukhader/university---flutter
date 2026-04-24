// Inheritance means one class can take properties and methods from another class.
//
// Real-life example
// If we have: Animal
// then: Cat, Dog
// Both are animals, so they can inherit common things.

// Example
// class Animal {
//   String name = "";
//
//   void eat() {
//     print("$name is eating");
//   }
// }
//
// class Dog extends Animal {
//   void bark() {
//     print("$name is barking");
//   }
// }
//
// void main() {
//   Dog dog = Dog();
//   dog.name = "Rocky";
//   dog.eat();
//   dog.bark();
// }

// Dog extends Animal means Dog inherits from Animal
// Dog gets name
// Dog gets eat()
// Dog also has its own method bark()

// Inheritance means: I already have common code, so I reuse it instead of writing it again.