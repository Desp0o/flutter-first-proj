import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String destName;
  final String image;
  final double score;
  final String desc;

  const CardWidget(
      {super.key,
      required this.destName,
      required this.image,
      required this.score,
      required this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 212,
      height: 196,
      padding: EdgeInsets.all(9),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Colors.white),
      child: Column(
        children: [
          Center(
              child: ClipRRect(
            borderRadius: BorderRadius.circular(13.0), // Set the border radius
            child: Image.asset(
              image,
              width: 197,
              height: 119,
              fit: BoxFit.fill,
            ),
          )),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                destName,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 16,
                    color: Color(0xffEE684A),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(score.toStringAsFixed(1),
                      style: TextStyle(color: Color(0xff6F7789)))
                ],
              )
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Icon(
                Icons.location_on,
                size: 18,
                color: Color(0xffEE684A),
              ),
              Text(
                desc,
                style: TextStyle(fontSize: 12, color: Color(0xff6f7789)),
              )
            ],
          )
        ],
      ),
    );
  }
}
