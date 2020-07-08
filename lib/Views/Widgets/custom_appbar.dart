import 'package:flutter/material.dart';
import 'package:ui_challenge/Models/Tuple.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final String image;
  final List<Tuple> pages;
  final TabController controller;

  const CustomAppBar(
      {Key key,
      this.controller,
      @required this.title,
      @required this.image,
      this.pages})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      expandedHeight: 190,
      pinned: true,
      floating: true,
      // title: Container(
      //   padding: EdgeInsets.all(8.0),
      //   color: Colors.white.withOpacity(0.5),
      //   child: Text(
      //     title,
      //     style: TextStyle(color: Colors.black, fontSize: 20.0),
      //   ),
      // ),
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.all(0.0),
        centerTitle: false,
        title: Container(
          padding: EdgeInsets.all(6.0),
          color: Colors.white.withOpacity(0.5),
          child: Row(
            children: <Widget>[
              Text(
                title,
                style: TextStyle(color: Colors.black, fontSize: 16.0),
              ),
            ],
          ),
        ),
        background: Image.asset(
          'assets/$image',
          fit: BoxFit.cover,
        ),
      ),
      // bottom: TabBar(
      //     labelColor: Colors.black,
      //     // controller: controller,
      //     tabs: pages
      //         .map((e) => Tab(
      //               text: e.title,
      //             ))
      //         .toList()),
    );
  }
}
