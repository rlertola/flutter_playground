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
          children: _roundTrip
              ? <Widget>[
                  oneWayTab(context, _roundTrip, switchTabs),
                  roundTripTab(context, _roundTrip, switchTabs),
                ]
              : <Widget>[
                  roundTripTab(context, _roundTrip, switchTabs),
                  oneWayTab(context, _roundTrip, switchTabs),
                ],
        ),
      ),
    );
  }
}

roundTripTab(context, direction, onTap) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Stack(
        children: <Widget>[
          // empty container under blue tab
          Container(
            decoration: BoxDecoration(
              color: kLightBlueGrey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
              ),
            ),
            height: 50,
            width: MediaQuery.of(context).size.width / 2 - 30,
          ),
          // roundtrip tab
          GestureDetector(
            onTap: direction ? null : onTap,
            child: Container(
              decoration: BoxDecoration(
                color: kBrightBlue,
                borderRadius: BorderRadius.only(
                  topRight:
                      direction ? Radius.circular(20) : Radius.circular(0),
                  topLeft: Radius.circular(30),

                  // bottomRight off if roundtrip, on if oneway
                  bottomRight:
                      direction ? Radius.circular(0) : Radius.circular(20),
                ),
              ),
              height: 50,
              width: MediaQuery.of(context).size.width / 2 - 30,
              child: Center(
                child: Text(
                  'Round Trip',
                  style: TextStyle(
                    color: direction ? Colors.white : Colors.white70,
                    fontSize: 18,
                    fontFamily: 'Rubik',
                  ),
                ),
              ),
            ),
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
          child: flightContainer(direction),
        ),
      ),
    ],
  );
}

oneWayTab(context, direction, onTap) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: <Widget>[
      Stack(
        children: <Widget>[
          // empty container under grey tab
          Container(
            decoration: BoxDecoration(
              color: kBrightBlue,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: direction ? Radius.circular(30) : Radius.circular(0),
              ),
            ),
            height: 50,
            width: MediaQuery.of(context).size.width / 2 - 30,
          ),
          GestureDetector(
            onTap: !direction ? null : onTap,
            child: Container(
              decoration: BoxDecoration(
                color: kLightBlueGrey,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  // off if roundtrip, on if oneway
                  topLeft: direction ? Radius.circular(0) : Radius.circular(20),
                  // on if roundtrip, off if oneway
                  bottomLeft:
                      direction ? Radius.circular(20) : Radius.circular(0),
                ),
              ),
              height: 50,
              width: MediaQuery.of(context).size.width / 2 - 30,
              child: Center(
                child: Text(
                  'One Way',
                  style: TextStyle(
                    color: !direction ? Colors.black : Colors.black54,
                    fontSize: 18,
                    fontFamily: 'Rubik',
                  ),
                ),
              ),
            ),
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
          child: flightContainer(direction),
        ),
      )
    ],
  );
}

Column flightContainer(direction) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'AMS',
            style: TextStyle(
              fontSize: 40,
              color: direction ? Colors.white : Colors.black,
              fontFamily: 'Rubik',
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            direction ? Icons.compare_arrows : Icons.arrow_forward,
            size: 30,
            color: direction ? Colors.white : Colors.black,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            'SFO',
            style: TextStyle(
              fontSize: 40,
              color: direction ? Colors.white : Colors.black,
              fontFamily: 'Rubik',
            ),
          ),
        ],
      ),
      SizedBox(
        height: 30,
      ),
      Text(
        'Choose more flights',
        style: TextStyle(
          color: direction ? Colors.white : Colors.black,
          fontFamily: 'Rubik',
        ),
      ),
    ],
  );
}
