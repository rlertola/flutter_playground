import 'package:flutter/material.dart';
import 'package:flutter_playground2/flight_app/constants.dart';

class FlightTopContainer extends StatefulWidget {
  @override
  _FlightTopContainerState createState() => _FlightTopContainerState();
}

class _FlightTopContainerState extends State<FlightTopContainer> {
  bool _roundTrip = true;

  void switchTabs() {
    setState(() {
      _roundTrip = !_roundTrip;
    });
  }

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
            // roundTripTab(context),
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
          // empty container under blue tab
          Container(
            decoration: BoxDecoration(
              // oneway tab on
              // color: kBrightBlue,
              // roundtrip tab on
              color: kLightBlueGrey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                // topLeft: Radius.circular(20),
              ),
            ),
            height: 50,
            width: MediaQuery.of(context).size.width / 2 - 30,
          ),
          // roundtrip tab
          Container(
            decoration: BoxDecoration(
              color: kBrightBlue,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(30),
                // bottomRight off if roundtrip, on if oneway
                // bottomRight: Radius.circular(20),
              ),
            ),
            height: 50,
            width: MediaQuery.of(context).size.width / 2 - 30,
          ),
        ],
      ),
      // Big blue container under row
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
          // empty container under grey tab
          Container(
            decoration: BoxDecoration(
              // roundtrip tab
              color: kBrightBlue,
              // oneway tab
              // color: kLightBlueGrey,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),

                // topLeft: Radius.circular(20),
              ),
            ),
            height: 50,
            width: MediaQuery.of(context).size.width / 2 - 30,
          ),
          Container(
            decoration: BoxDecoration(
              color: kLightBlueGrey,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                // off if roundtrip, on if oneway
                // topLeft: Radius.circular(20),
                // on if roundtrip, off if oneway
                bottomLeft: Radius.circular(20),
              ),
            ),
            height: 50,
            width: MediaQuery.of(context).size.width / 2 - 30,
          ),
        ],
      ),
      // Big grey container under row
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
