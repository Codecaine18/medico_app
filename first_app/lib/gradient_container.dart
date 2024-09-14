import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft; // variables usign var keyword
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(
      {super.key,
      required this.color}); // IF UWE USE NAMED ARGUMENT(RIGHT TO SUPER.KEY (inseide super key {}) ) USE REQUIRED ;
  // GradientContainer({key}):super(key:key);
  final List<Color> color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: color,
          begin: Alignment.bottomLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/dice-1.png',
              width: 200,
            ),
            TextButton(
              onPressed: () {},
              style:TextButton.styleFrom(foregroundColor:Colors.white , textStyle: const TextStyle() ),
              child: const Text('Roll Dice'),
            )
          ],
        ),
      ),
    );
  }
}




// use POSITIONAL ARGUMENT



// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Scaffold(
//         backgroundColor: Color.fromARGB(237, 255, 127, 8),
//         body: GradientContainer(
//           [Colors.blue, Colors.deepPurpleAccent],
//         ),
//       ),
//     );
//   }
// }


// class GradientContainer extends StatelessWidget {
//   const GradientContainer(this.colors, {Key? key}) : super(key: key);

//   final List<Color> colors;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//       ),
//       child: const Center(
//         child: StyledText("Hello World"),
//       ),
//     );
//   }
// }

// // Dummy StyledText widget for illustration. Replace with your actual implementation.
// class StyledText extends StatelessWidget {
//   final String text;

//   const StyledText(this.text, {Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       style: const TextStyle(fontSize: 24, color: Colors.white),
//     );
//   }
// }
