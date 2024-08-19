import 'package:flutter/material.dart';
import 'package:tkt/widgets/top_place_single_widget.dart';

class TopPlaces extends StatelessWidget {
  const TopPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          right: 30.0), // Adjust the left padding as needed
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Top Place',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              RawGestureDetector(
                child: Text(
                  'View All',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff121212),
                      fontSize: 14),
                ),
              )
            ],
          ),
          SizedBox(height: 15),
          Column(
            children: [
              TopPlaceSingleWidget(
                title: '1',
                score: 4.2,
                destination: '1',
              ),
              SizedBox(height: 15),
              TopPlaceSingleWidget(title: '1', score: 4.2, destination: '1')
            ],
          )
        ],
      ),
    );
  }
}
