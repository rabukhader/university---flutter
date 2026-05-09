//Why do we use them?
//
// API requests take time.
// The app must wait for data from the internet.
//
// That is why we use:
//
// Future
// async
// await
// Example
// Future<void> getData() async {
//   await Future.delayed(const Duration(seconds: 2));
//   print("Data loaded");
// }
// Main points
// Future means the result will come later
// async makes a function asynchronous
// await tells Dart to wait for the result
//
// In API integration, these are essential.