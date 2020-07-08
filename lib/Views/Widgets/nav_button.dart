import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {

  final Icon icon;
  final Text title;

  const NavButton({Key key, this.icon, this.title}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          icon,title
        ],
      ),
    );
  }
}