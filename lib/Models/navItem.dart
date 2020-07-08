import 'package:flutter/material.dart';

class NavItem {
  Icon icon;
  Text title;

  NavItem(IconData inputIcon, String inputTitle) {
    icon = Icon(
      inputIcon,
      color: Colors.black,
    );

    title = Text(
      inputTitle,
      style: TextStyle(color: Colors.black),
    );
  }
}
