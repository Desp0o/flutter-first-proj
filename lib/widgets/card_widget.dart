import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

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
          Center(child: Image.asset('assets/images/lake.png')),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Ranu Kumbolo",
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
                  Text('4.9', style: TextStyle(color: Color(0xff6F7789)))
                ],
              )
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: const [
              Icon(
                Icons.location_on,
                size: 18,
                color: Color(0xffEE684A),
              ),
              Text(
                "Lumajang, Jawa timur",
                style: TextStyle(fontSize: 12, color: Color(0xff6f7789)),
              )
            ],
          )
        ],
      ),
    );
  }
}
