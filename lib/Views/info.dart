import 'package:flutter/material.dart';
import 'package:ui_challenge/Models/available_feature.dart';

class Info extends StatelessWidget {
  final List<AvailableFeature> features = [
    AvailableFeature(Icons.wifi, "Free Wifi"),
    AvailableFeature(Icons.card_membership, "Credit Card"),
    AvailableFeature(Icons.receipt, "Reservations"),
    AvailableFeature(Icons.note, "Billing"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _buildOpeningHours(),
        _buildAvailableFeatures(context),
        _buildDetails()
      ],
    );
  }

  Widget _buildOpeningHours() {
    return Card(
      child: ExpansionTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[Text("Opening Hours"), Text("9:30am - 9:30pm")],
        ),
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 12.0, bottom: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Sunday: 9:30am - 9:30pm'),
                    Text('Sunday: 9:30am - 9:30pm'),
                    Text('Sunday: 9:30am - 9:30pm'),
                    Text('Sunday: 9:30am - 9:30pm'),
                    Text('Sunday: 9:30am - 9:30pm'),
                    Text('Sunday: 9:30am - 9:30pm'),
                    Text('Sunday: 9:30am - 9:30pm'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAvailableFeatures(context) {
    return Card(
      child: ExpansionTile(
        title: Text("Available Features"),
        children: <Widget>[
          Wrap(
            children: features
                .map((e) => SizedBox(
                  width: MediaQuery.of(context).size.width / 2.2,
                                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[e.icon,SizedBox(width: 8.0,), e.title],
                  ),
                ))
                .toList(),
          )
        ],
      ),
    );
  }

  Widget _buildDetails() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Detail',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
                'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.')
          ],
        ),
      ),
    );
  }
}
