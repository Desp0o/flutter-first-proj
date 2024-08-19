import 'package:flutter/material.dart';

class TopPlaceSingleWidget extends StatelessWidget {
  final String placeTitle;
  final String image;
  final double score;
  final String destination;

  const TopPlaceSingleWidget(
      {super.key,
      required this.placeTitle,
      required this.image,
      required this.score,
      required this.destination});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 116,
      padding: EdgeInsets.fromLTRB(8, 11, 8, 11),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            child: Image.asset(
              image,
              width: 86,
              height: 90,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                placeTitle,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    size: 18,
                    color: Color(0xffEE684A),
                  ),
                  Text(
                    destination,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff6F7789),
                        fontSize: 12),
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 18,
                    color: Color(0xffEE684A),
                  ),
                  SizedBox(width: 5),
                  Text(
                    score.toStringAsFixed(1),
                    style: TextStyle(
                        fontFamily: 'Poppins', color: Color(0xff6f7789)),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
