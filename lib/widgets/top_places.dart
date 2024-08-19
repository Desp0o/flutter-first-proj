import 'package:flutter/material.dart';

class TopPlaces extends StatelessWidget {
  const TopPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          right: 30.0), // Adjust the left padding as needed
      child: Column(
        children: const [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Top Place',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              RawGestureDetector(
                child: Text(
                  'View All',
                  style: TextStyle(color: Color(0xff121212), fontSize: 14),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
