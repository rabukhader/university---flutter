
// Simple comparison table
// StatelessWidget : fixed, no changing data, simple UI, example: logo, title, static text
// StatefulWidget : can change, has changing data, interactive UI, example: counter, form, checkbox

// Stateless example
// class WelcomeText extends StatelessWidget {
//   const WelcomeText({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Text("Welcome Students");
//   }
// }

// Stateful example
// class LikeButton extends StatefulWidget {
//   const LikeButton({super.key});
//
//   @override
//   State<LikeButton> createState() => _LikeButtonState();
// }
//
// class _LikeButtonState extends State<LikeButton> {
//   bool liked = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () {
//         setState(() {
//           liked = !liked;
//         });
//       },
//       child: Text(liked ? "Liked" : "Like"),
//     );
//   }
// }
//
// If the UI is fixed, use Stateless.
// If the UI changes because of interaction or data, use Stateful.