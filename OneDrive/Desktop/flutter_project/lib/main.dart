import 'package:flutter/material.dart';

import 'package:my_app/pages/onboarding_page.dart'; // Correct the path here

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home properties 
      debugShowCheckedModeBanner: false,
      //title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 107, 170, 181),
        ),
        // useMaterial3: true,
      ),
      home: const OnboardingPage(),
    );
  }
}
