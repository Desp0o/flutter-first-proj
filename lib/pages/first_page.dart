import 'package:flutter/material.dart';
import 'package:tkt/widgets/bottom_nav_bar.dart';
import 'package:tkt/widgets/category_widget.dart';
import 'package:tkt/widgets/greeting_widget.dart';
import 'package:tkt/widgets/sIdeMenu.dart';
import 'package:tkt/widgets/top_places.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  void goToLocations(path) {
    setState(() {
      Navigator.pushNamed(context, path);
    });
  }

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
          CustomBottomBar()
        ],
      ),
    );
  }
}
