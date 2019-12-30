import 'package:flutter/material.dart';

class ContainerTab extends StatelessWidget {
  final Color topColor;
  final Color bottomColor;
  final CrossAxisAlignment alignment;
  final bool direction;
  Function changeTab;

  ContainerTab({
    this.topColor,
    this.bottomColor,
    this.alignment,
    this.direction,
    this.changeTab,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: <Widget>[
        Stack(
          children: <Widget>[
            // empty container under blue tab
            Container(
              decoration: BoxDecoration(
                color: bottomColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                ),
              ),
              height: 50,
              width: MediaQuery.of(context).size.width / 2 - 30,
            ),
            // roundtrip tab
            GestureDetector(
              onTap: direction ? null : changeTab,
              child: Container(
                decoration: BoxDecoration(
                  color: topColor,
                  borderRadius: BorderRadius.only(
                    topRight:
                        direction ? Radius.circular(20) : Radius.circular(0),
                    topLeft: Radius.circular(30),
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
              color: topColor,
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
}
