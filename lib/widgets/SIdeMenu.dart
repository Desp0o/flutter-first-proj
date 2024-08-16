import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // header
          Container(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 100),
              child: Center(
                child: Text(
                  "Menu",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              )),
          ListTile(
            leading: Icon(
              Icons.home_outlined,
              color: Color(0xffF36D72),
            ),
            title: Text("Home"),
          ),

          ListTile(
            leading: Icon(
              Icons.favorite_outline,
              color: Color(0xffF36D72),
            ),
            title: Text("Favourites"),
          )
        ],
      ),
    );
  }
}
