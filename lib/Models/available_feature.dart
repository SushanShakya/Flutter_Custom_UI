import 'package:flutter/material.dart';

class AvailableFeature {
  Icon icon;
  Text title;

  AvailableFeature(IconData iconData, String title) {
    icon = Icon(iconData, color: Colors.black);
    this.title = Text(title, style: TextStyle(fontSize: 16.0),);
  }
}