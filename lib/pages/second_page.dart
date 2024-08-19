import "package:flutter/material.dart";
import 'package:tkt/arrays/destination_lists.dart';
import 'package:tkt/widgets/top_place_single_widget.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('2nd page'),
        ),
        body: Stack(children: [
          ListView.builder(
              itemCount: allDestinationList.length + 1,
              itemBuilder: (context, index) {
                if (index < allDestinationList.length) {
                  final item = allDestinationList[index];

                  return TopPlaceSingleWidget(
                      placeTitle: item['destName'],
                      image: item['image'],
                      score: item['score'],
                      destination: item['desc']);
                } else {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'End of the list',
                      textAlign: TextAlign.center,
                    ),
                  );
                }
              })
        ]));
  }
}
