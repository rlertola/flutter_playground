import 'package:flutter/material.dart';
import 'package:flutter_playground2/flight_app/constants.dart';

class FlightTopContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Stack(
          children: <Widget>[
            oneWayTab(context),
            roundTripTab(context),
          ],
        ),
      ),
    );
  }
}

roundTripTab(context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: kLightBlueGrey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                // topLeft: Radius.circular(20),
              ),
            ),
            height: 40,
            width: MediaQuery.of(context).size.width / 2 - 30,
          ),
          Container(
            decoration: BoxDecoration(
              color: kBrightBlue,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(30),
                // bottomRight: Radius.circular(20),
              ),
            ),
            height: 40,
            width: MediaQuery.of(context).size.width / 2 - 30,
          ),
        ],
      ),
      Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: kBrightBlue,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
        ),
      )
    ],
  );
}

oneWayTab(context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: <Widget>[
      Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: kBrightBlue,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                // topLeft: Radius.circular(20),
              ),
            ),
            height: 40,
            width: MediaQuery.of(context).size.width / 2 - 30,
          ),
          Container(
            decoration: BoxDecoration(
              color: kLightBlueGrey,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                // topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            height: 40,
            width: MediaQuery.of(context).size.width / 2 - 30,
          ),
        ],
      ),
      Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: kLightBlueGrey,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
        ),
      )
    ],
  );
}
