import 'package:flutter/material.dart';
import 'package:flutter_playground2/flight_app/constants.dart';
import 'package:flutter_playground2/flight_app/tab.dart';

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
          children:
              // _roundTrip
              //     ? <ContainerTab>[
              //         ContainerTab(
              //           topColor: kBrightBlue,
              //           bottomColor: kLightBlueGrey,
              //           direction: _roundTrip,
              //           alignment: CrossAxisAlignment.start,
              //           changeTab: switchTabs,
              //         ),
              //         ContainerTab(
              //           topColor: kLightBlueGrey,
              //           bottomColor: kBrightBlue,
              //           direction: _roundTrip,
              //           alignment: CrossAxisAlignment.end,
              //           changeTab: switchTabs,
              //         ),
              //       ]
              //     : <ContainerTab>[
              //         ContainerTab(
              //           topColor: kLightBlueGrey,
              //           bottomColor: kBrightBlue,
              //           direction: _roundTrip,
              //           alignment: CrossAxisAlignment.end,
              //           changeTab: switchTabs,
              //         ),
              //         ContainerTab(
              //           topColor: kBrightBlue,
              //           bottomColor: kLightBlueGrey,
              //           direction: _roundTrip,
              //           alignment: CrossAxisAlignment.start,
              //           changeTab: switchTabs,
              //         ),
              //       ],

              _roundTrip
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
        ),
      )
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
        ),
      )
    ],
  );
}
