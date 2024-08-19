import 'package:flutter/material.dart';
import 'package:tkt/arrays/destination_lists.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  @override
  Widget build(BuildContext context) {
    void goToLocations(path) {
      setState(() {
        Navigator.pushNamed(context, path);
      });
    }

    return Positioned(
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
                    onTap: () => goToLocations(element['path']),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Image.asset(element['icon'])],
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
