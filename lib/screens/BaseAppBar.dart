import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSize {
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.lightBlueAccent,
      title: new Text(
        "MyFBLA",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      ),
      elevation: 0.0,
      centerTitle: true,
      leading: Container(
        margin: EdgeInsets.only(left: 10),
        child: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          iconSize: 35,
        ),
      ),
    );
  }

  Size get preferredSize => new Size.fromHeight(60);

  @override
  Widget get child => null;
}
