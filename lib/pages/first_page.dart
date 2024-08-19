import 'package:flutter/material.dart';
import 'package:tkt/widgets/category_widget.dart';
import 'package:tkt/widgets/greeting_widget.dart';
import 'package:tkt/widgets/sIdeMenu.dart';
import 'package:tkt/widgets/top_places.dart';
import 'package:tkt/arrays/destination_lists.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F6),
      drawer: SideMenu(),
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(color: Color(0xff6F7789)),
        ),
      ),
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.fromLTRB(30, 0, 0, 100),
            children: const [
              SizedBox(height: 50),
              Greeting(),
              SizedBox(height: 30),
              CategorWidget(),
              SizedBox(height: 30),
              TopPlaces(),
            ],
          ),
          Positioned(
            bottom: 20,
            left: 30,
            right: 30,
            child: Container(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
              height: 80,
              decoration: BoxDecoration(
                  color: Color(0xff000000),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: botNavBar
                    .map((element) => GestureDetector(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Image.asset(element['icon'])],
                          ),
                        ))
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
