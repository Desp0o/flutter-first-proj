import 'package:flutter/material.dart';
import 'package:tkt/pages/first_page.dart';
import 'package:tkt/pages/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void changeIcon() {
    // Logic for changing the icon or handling the button press
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => FirstPage(), // Define the first page route
        '/second': (context) => SecondPage(), // Define the second page route
        // Add more routes as needed
      },
    );
  }
}
