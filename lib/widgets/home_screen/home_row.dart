import 'package:flutter/material.dart';

import '../../currency_app/currency_app_screen.dart';
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
              title: 'Currency',
              route: CurrencyAppScreen.routeName,
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
              title: 'Projects',
              // route: CurrencyAppScreen.routeName,
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