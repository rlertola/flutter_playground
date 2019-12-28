import 'package:flutter/material.dart';

import 'flight_tile.dart';

const double kSizedBoxHeight = 30;

class FlightBottomPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: kSizedBoxHeight,
            ),
            FlightTile(
              from: 'Beijing',
              to: 'Sanya',
            ),
            SizedBox(
              height: kSizedBoxHeight,
            ),
            FlightTile(
              from: 'Mexico City',
              to: 'San Salvador',
            ),
            SizedBox(
              height: kSizedBoxHeight,
            ),
            FlightTile(
              from: 'Detroit',
              to: 'Chicago',
            ),
            SizedBox(
              height: kSizedBoxHeight,
            ),
          ],
        ),
      ),
    );
  }
}
