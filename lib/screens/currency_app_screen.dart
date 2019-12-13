import 'package:flutter/material.dart';

class CurrencyAppScreen extends StatelessWidget {
  static const routeName = '/currency-app-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Flight Ticket',
          style: TextStyle(color: Color(0xFFAEBEDB)),
        ),
        actions: <Widget>[
          Icon(
            Icons.search,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
