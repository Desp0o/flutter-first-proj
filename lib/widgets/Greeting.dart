import 'package:flutter/material.dart';

class Greeting extends StatelessWidget {
  const Greeting({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Wonderful Indonesia",
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 24,
            fontWeight: FontWeight.w900,
          ),
        ),
        Text("Let’s Explore Together",
            style: TextStyle(
                color: Color(0xff6F7789),
                fontSize: 20,
                fontWeight: FontWeight.w600))
      ],
    );
  }
}
