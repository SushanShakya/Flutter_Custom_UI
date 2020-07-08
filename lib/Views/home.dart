import 'package:flutter/material.dart';
import 'package:ui_challenge/Models/Tuple.dart';
import 'package:ui_challenge/Models/navItem.dart';
import 'package:ui_challenge/Views/Widgets/custom_appbar.dart';
import 'package:ui_challenge/Views/Widgets/nav_button.dart';
import 'package:ui_challenge/Views/deals.dart';
import 'package:ui_challenge/Views/gallery.dart';
import 'package:ui_challenge/Views/info.dart';
import 'package:ui_challenge/Views/review.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Tuple> pages = [
    Tuple("Info", Info()),
    Tuple("Review", Review()),
    Tuple("Gallery", Gallery()),
    Tuple("Deals", Deals()),
  ];

  List<NavItem> navItems = [
    NavItem(Icons.location_on, "Address"),
    NavItem(Icons.call, "Call"),
    NavItem(Icons.web, "Website"),
    NavItem(Icons.bookmark, "Bookmarks"),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: pages.length,
      child: SafeArea(
        child: Scaffold(
          // appBar: AppBar(
          //   bottom: TabBar(
          //       tabs: pages
          //           .map((e) => Tab(
          //                 text: e.title,
          //               ))
          //           .toList()),
          // ),
          body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return <Widget>[
                CustomAppBar(
                  title: "Bajeko Sekuwa Sadobato",
                  image: "bajekoSekuwa.jpg",
                  pages: pages,
                )
              ];
            },
            body: Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                title: Text(
                    'Sadobato-Godavari Rd. Lalitpur 44700, Nepal\nPhone: 01-5525244',
                    style: TextStyle(fontSize: 14.0)),
                bottom: TabBar(
                    labelColor: Colors.black,
                    // controller: controller,
                    tabs: pages
                        .map((e) => Tab(
                              text: e.title,
                            ))
                        .toList()),
              ),
              body: TabBarView(
                children: pages.map((e) => e.widget).toList(),
              ),
            ),
          ),
          // body: TabBarView(
          //   children: pages.map((e) => e.widget).toList(),
          // ),
          bottomNavigationBar: BottomAppBar(
            child: SizedBox(
              height: 60.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: navItems
                    .map((e) => NavButton(icon: e.icon, title: e.title))
                    .toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
