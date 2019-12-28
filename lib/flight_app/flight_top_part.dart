import 'package:flutter/material.dart';
import 'package:flutter_playground2/flight_app/flight_top_container.dart';

class FlightTopPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlightTopContainer();

    // Container(
    //   height: 300,
    //   width: double.infinity,
    //   decoration: BoxDecoration(
    //     color: Colors.white,
    //     borderRadius: BorderRadius.only(
    //       bottomLeft: Radius.circular(30),
    //       bottomRight: Radius.circular(30),
    //     ),
    //   ),
    //   child: Padding(
    //     padding: const EdgeInsets.all(30),
    //     child: Container(
    //       decoration: BoxDecoration(
    //         // color: Color(0xFF0a3ffe),
    //         borderRadius: BorderRadius.all(
    //           Radius.circular(30),
    //         ),
    //       ),
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: <Widget>[
    //           Container(
    //             decoration: BoxDecoration(
    //               // color: Color(0xFFAEBEDB),
    //               borderRadius: BorderRadius.only(
    //                 topRight: Radius.circular(30),
    //                 topLeft: Radius.circular(30),
    //               ),
    //             ),
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //               children: <Widget>[
    //                 Expanded(
    //                   child: Stack(
    //                     children: <Widget>[
    //                       Container(
    //                           // color: Colors.blue,
    //                           ),
    //                       Container(
    //                         alignment: Alignment.center,
    //                         height: 40,
    //                         // margin: EdgeInsets.only(top: 10),
    //                         decoration: BoxDecoration(
    //                             color: Colors.transparent,
    //                             // color: Color(0xFF0a3ffe),
    //                             borderRadius: BorderRadius.only(
    //                               topRight: Radius.circular(20),
    //                               topLeft: Radius.circular(30),
    //                             )),
    //                         child: Text(
    //                           'Round Trip',
    //                           style: TextStyle(
    //                             color: Colors.white,
    //                             fontSize: 18,
    //                             fontFamily: 'Rubik',
    //                           ),
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //                 Expanded(
    //                   child: Container(
    //                     alignment: Alignment.center,
    //                     height: 40,
    //                     decoration: BoxDecoration(
    //                       // color: Color(0xFFAEBEDB),
    //                       color: Colors.blue,
    //                       borderRadius: BorderRadius.only(
    //                         bottomLeft: Radius.circular(20),
    //                         topRight: Radius.circular(30),
    //                       ),
    //                     ),
    //                     child: Text(
    //                       'One Way',
    //                       style: TextStyle(
    //                         color: Colors.black,
    //                         fontSize: 18,
    //                         fontFamily: 'Rubik',
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: <Widget>[
    //               Text(
    //                 'AMS',
    //                 style: TextStyle(
    //                   fontSize: 40,
    //                   color: Colors.white,
    //                   fontFamily: 'Rubik',
    //                 ),
    //               ),
    //               SizedBox(
    //                 width: 20,
    //               ),
    //               Icon(
    //                 Icons.compare_arrows,
    //                 size: 30,
    //                 color: Color(0xFFd7dcea),
    //               ),
    //               SizedBox(
    //                 width: 20,
    //               ),
    //               Text(
    //                 'SFO',
    //                 style: TextStyle(
    //                   fontSize: 40,
    //                   color: Colors.white,
    //                   fontFamily: 'Rubik',
    //                 ),
    //               ),
    //             ],
    //           ),
    //           // SizedBox(
    //           //   height: 30,
    //           // ),
    //           Padding(
    //             padding: const EdgeInsets.only(
    //               bottom: 20,
    //             ),
    //             child: Text(
    //               'Choose more flights',
    //               style: TextStyle(
    //                 color: Colors.white,
    //                 fontFamily: 'Rubik',
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
