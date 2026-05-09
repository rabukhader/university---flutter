//Why is this important?
//
// Real apps should not just show data.
// They should also handle:
//
// loading
// errors
// empty results
// Example structure
// if (isLoading) {
//   return const Center(child: CircularProgressIndicator());
// } else if (users.isEmpty) {
//   return const Center(child: Text("No data found"));
// } else {
//   return ListView.builder(...);
// }
// Main points
//
// A good data screen should think about:
//
// what to show while waiting
// what to show if the request fails
// what to show if there is no data