import "package:flutter/material.dart";
import "package:tkt/widgets/category_widget.dart";
import "package:tkt/widgets/greeting_widget.dart";
import "package:tkt/widgets/sIdeMenu.dart";
import "package:tkt/widgets/top_places.dart";

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
      body: ListView(
        padding: EdgeInsets.only(left: 30),
        children: const [
          SizedBox(height: 50),
          Greeting(),
          SizedBox(height: 30),
          CategorWidget(),
          SizedBox(height: 30),
          TopPlaces()
        ],
      ),
    );
  }
}
