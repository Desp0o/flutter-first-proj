import "package:flutter/material.dart";
import "package:tkt/widgets/category_widget.dart";
import "package:tkt/widgets/greeting_widget.dart";
import "package:tkt/widgets/sIdeMenu.dart";

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          CategorWidget()
        ],
      ),
    );
  }
}
