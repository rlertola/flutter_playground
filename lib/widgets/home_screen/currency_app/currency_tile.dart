import 'package:flutter/material.dart';

const double kSizedBoxWidth = 14;

class CurrencyTile extends StatelessWidget {
  final String from;
  final String to;

  CurrencyTile({this.from, this.to});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          CircleAvatar(
            child: Icon(Icons.map),
          ),
          Container(
            child: Row(children: <Widget>[
              buildContainer(from, to),

              // SizedBox(
              //   width: kSizedBoxWidth,
              // ),
            ]),
          ),
        ],
      ),
    );
  }

  Container buildContainer(from, to) {
    return Container(
      // color: Colors.grey,
      child: Row(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('From',
                  style: TextStyle(fontSize: 18, color: Color(0xFF7B849B))),
              Text(
                from,
                style: TextStyle(fontSize: 22, color: Colors.black),
              ),
            ],
          ),
          SizedBox(
            width: kSizedBoxWidth,
          ),
          VerticalDivider(
            width: 0,
            thickness: 1,
            color: Color(0xFFAEBEDB),
          ),
          SizedBox(
            width: kSizedBoxWidth,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('To',
                  style: TextStyle(fontSize: 18, color: Color(0xFF7B849B))),
              Text(
                to,
                style: TextStyle(fontSize: 22, color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
