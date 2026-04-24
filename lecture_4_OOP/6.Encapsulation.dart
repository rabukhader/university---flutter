// Encapsulation means protecting data and controlling how it is used.
//
// We do not want anyone to change important data in a wrong way.
// In Dart, private fields start with _
//
// Example
// class BankAccount {
//   double _balance = 0;
//
//   void deposit(double amount) {
//     if (amount > 0) {
//       _balance += amount;
//     }
//   }
//
//   double getBalance() {
//     return _balance;
//   }
// }
//
// void main() {
//   BankAccount account = BankAccount();
//   account.deposit(100);
//   print(account.getBalance());
// }


// _balance is private
// users cannot change it directly from outside
// they use methods like deposit()
//
// Encapsulation means: hide the sensitive data and allow safe access through methods.