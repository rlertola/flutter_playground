import 'package:flutter/material.dart';
import 'package:flutter_playground2/widgets/home_screen/currency_app/currency_tile.dart';

const double kSizedBoxHeight = 30;

class CurrencyAppScreen extends StatelessWidget {
  static const routeName = '/currency-app-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Currency App',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
          ),
          SizedBox(
            height: kSizedBoxHeight,
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: kSizedBoxHeight,
                ),
                CurrencyTile(
                  from: 'Beijing',
                  to: 'Sanya',
                ),
                SizedBox(
                  height: kSizedBoxHeight,
                ),
                CurrencyTile(
                  from: 'Mexico City',
                  to: 'San Salvador',
                ),
                SizedBox(
                  height: kSizedBoxHeight,
                ),
                CurrencyTile(
                  from: 'Detroit',
                  to: 'Chicago',
                ),
                SizedBox(
                  height: kSizedBoxHeight,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
