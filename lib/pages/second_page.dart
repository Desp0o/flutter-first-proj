import "package:flutter/material.dart";
import 'package:tkt/arrays/destination_lists.dart';
import 'package:tkt/widgets/bottom_nav_bar.dart';
import 'package:tkt/widgets/top_place_single_widget.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2nd page'),
      ),
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.fromLTRB(30, 50, 30, 100),
            children: allDestinationList
                .map((element) => GestureDetector(
                      child: Column(
                        children: [
                          TopPlaceSingleWidget(
                              placeTitle: element['destName'],
                              image: element['image'],
                              score: element['score'],
                              destination: element['desc']),
                          SizedBox(height: 10)
                        ],
                      ),
                    ))
                .toList(),
          ),
          CustomBottomBar()
        ],
      ),
    );
  }
}
