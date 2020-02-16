import 'dart:math';

import 'package:flutter/material.dart';

class RotatedMenu extends StatelessWidget {
  static const routeName = '/rotated_menu';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Transform.rotate(
          angle: pi / 4,
          child: Container(
            width: 500,
            height: 500,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    rotatedBox(Colors.red, 'Projects'),
                    rotatedBox(Colors.blue, 'About'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    rotatedBox(Colors.green, 'Contact'),
                    rotatedBox(Colors.yellow, 'Skills'),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

rotatedBox(Color color, String title) {
  return GestureDetector(
    onTap: () {
      print(title);
    },
    child: Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: color,
        ),
        width: 200,
        height: 200,
        child: Center(
          child: Transform.rotate(
            angle: pi / -4,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
