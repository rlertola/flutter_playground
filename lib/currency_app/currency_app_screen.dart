import 'package:flutter/material.dart';

import 'currency_tile.dart';

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
        centerTitle: false,
        title: Text(
          'Flight Ticket',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
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
          Container(
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
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF0a3ffe),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFAEBEDB),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              height: 40,
                              // margin: EdgeInsets.only(top: 10),
                              decoration: BoxDecoration(
                                  color: Color(0xFF0a3ffe),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    topLeft: Radius.circular(30),
                                  )),
                              child: Text(
                                'Round Trip',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'Schyler',
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              height: 40,
                              decoration: BoxDecoration(
                                // color: Color(0xFFAEBEDB),
                                color: Colors.blue,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  topRight: Radius.circular(30),
                                ),
                              ),
                              child: Text(
                                'One Way',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AMS',
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.compare_arrows,
                          size: 30,
                          color: Color(0xFFd7dcea),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'SFO',
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(
                    //   height: 30,
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 20,
                      ),
                      child: Text(
                        'Choose more flights',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: kSizedBoxHeight,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
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
          ),
        ],
      ),
    );
  }
}
