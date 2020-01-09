import 'package:flutter/material.dart';
import 'package:flutter_playground2/flight_app/curved_tab_bar.dart';
import 'package:flutter_playground2/flight_app/flight_app_screen.dart';

import '../../shoe_store/shoe_store_screen.dart';
import 'box.dart';

class HomeRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Box(
              title: 'Flight Ticket',
              route: FlightAppScreen.routeName,
            ),
            Box(
              title: 'Shoe Store',
              route: ShoeStoreScreen.routeName,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Box(
              title: 'tab',
              route: CurvedTabBar.routeName,
            ),
            Box(
              title: 'Projects',
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Box(
              title: 'Projects',
              // route: CurrencyAppScreen.routeName,
            ),
            Box(
              title: 'Projects',
            ),
          ],
        )
      ],
    );
  }
}
