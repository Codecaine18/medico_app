// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     const MaterialApp(
//       home: Scaffold(
//         backgroundColor:Color.fromARGB(255, 243, 101, 0),
//         body: Center(
//           child: Text("Hello World"),
//         ),
//       ),
//     ),
//   ); // provided by flutter framework
// }

import 'package:flutter/material.dart';
import 'gradient_container.dart'; // Corrected import statement

// import 'package:flutter/services.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      backgroundColor: Color.fromARGB(237, 255, 127, 8),
      body: GradientContainer(
        color: [
          Color.fromARGB(255, 91, 110, 126),
          Color.fromARGB(255, 3, 42, 46)
        ],
      ),
    ),
  ));
}
