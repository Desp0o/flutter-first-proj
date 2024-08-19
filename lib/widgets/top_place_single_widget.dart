import 'package:flutter/material.dart';

class TopPlaceSingleWidget extends StatefulWidget {
  const TopPlaceSingleWidget({super.key});

  @override
  State<TopPlaceSingleWidget> createState() => _TopPlaceSingleWidgetState();
}

class _TopPlaceSingleWidgetState extends State<TopPlaceSingleWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 116,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
    );
  }
}
