import 'package:flutter/material.dart';
import 'package:tkt/widgets/top_place_single_widget.dart';
import 'package:tkt/arrays/destination_lists.dart';

class TopPlaces extends StatefulWidget {
  const TopPlaces({super.key});

  @override
  State<TopPlaces> createState() => _TopPlacesState();
}

class _TopPlacesState extends State<TopPlaces> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          right: 30.0), // Adjust the right padding as needed
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Top Place',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              GestureDetector(
                onTap: () {
                  // Add navigation or action for "View All" here
                },
                child: const Text(
                  'View All',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff121212),
                      fontSize: 14),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Column(
            children: europeDestinations
                .map((toElement) => GestureDetector(
                      onTap: () {
                        print(toElement['destName']);
                      },
                      child: Column(
                        children: [
                          TopPlaceSingleWidget(
                            placeTitle: toElement['destName'],
                            score: toElement['score'],
                            destination: toElement['desc'],
                            image: toElement['image'],
                          ),
                          SizedBox(height: 10)
                        ],
                      ),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
