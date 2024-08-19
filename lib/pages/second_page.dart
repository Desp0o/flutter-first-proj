import 'package:flutter/material.dart';
import 'package:tkt/arrays/destination_lists.dart';
import 'package:tkt/widgets/top_place_single_widget.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final ScrollController controller = ScrollController();
  int currentMax = 10; // Initial number of items to load

  @override
  void initState() {
    super.initState();
    controller.addListener(_scrollListener);
  }

  @override
  void dispose() {
    controller.removeListener(_scrollListener);
    controller.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (controller.position.pixels == controller.position.maxScrollExtent) {
      _loadMore();
    }
  }

  void _loadMore() {
    if (currentMax < allDestinationList.length) {
      setState(() {
        currentMax += 10; // Load 10 more items
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('2nd page'),
        ),
        body: Stack(children: [
          ListView.builder(
              controller: controller,
              itemCount: (currentMax < allDestinationList.length)
                  ? currentMax + 1
                  : allDestinationList.length,
              itemBuilder: (context, index) {
                if (index < currentMax && index < allDestinationList.length) {
                  final item = allDestinationList[index];
                  return TopPlaceSingleWidget(
                      placeTitle: item['destName'],
                      image: item['image'],
                      score: item['score'],
                      destination: item['desc']);
                } else if (index == currentMax &&
                    currentMax < allDestinationList.length) {
                  return Center(child: CircularProgressIndicator());
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
