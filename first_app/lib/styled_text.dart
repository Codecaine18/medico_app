import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText( this.text, {super.key}); // constructor
 final String text;
  @override
  Widget build(context) {
    return  Text(
      text,
      style:const TextStyle(
        color: Color.fromARGB(255, 5, 0, 0),
        fontSize: 28,
      ),
    );
  }
}
