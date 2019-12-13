import 'package:flutter/material.dart';
import 'package:flutter_playground2/screens/currency_app_screen.dart';

import 'box.dart';

class HomeRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Box(
          title: 'Projects',
          route: CurrencyAppScreen.routeName,
        ),
        Box(
          title: 'Projects',
        ),
      ],
    );
  }
}
