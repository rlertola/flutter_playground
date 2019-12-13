import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final String title;
  final String route;

  Box({
    this.title,
    this.route,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFb0003a),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        width: 150,
        height: 200,
        child: Container(
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              // style: GoogleFonts.pacifico(
              //   textStyle: TextStyle(
              //     color: Colors.white,
              //     fontSize: 20,
              //   ),
              // ),
            ),
          ),
        ),
      ),
    );
  }
}
