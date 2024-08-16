import "package:flutter/material.dart";
import "package:tkt/widgets/Greeting.dart";
import "package:tkt/widgets/SIdeMenu.dart";

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
      body: Column(
        children: const [Greeting()],
      ),
    );
  }
}
