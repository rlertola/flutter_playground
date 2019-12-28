import 'package:flutter/material.dart';
import 'package:flutter_playground2/flight_app/flight_bottom_part.dart';
import 'package:flutter_playground2/flight_app/flight_top_part.dart';

const double kSizedBoxHeight = 30;

class FlightAppScreen extends StatelessWidget {
  static const routeName = '/flight-app-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Text(
          'Flight Ticket',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontFamily: 'Rubik',
            // fontFamily: 'Trajan Pro',
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.search,
              color: Colors.black,
              size: 36,
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          FlightTopPart(),
          SizedBox(
            height: kSizedBoxHeight,
          ),
          FlightBottomPart(),
        ],
      ),
    );
  }
}
