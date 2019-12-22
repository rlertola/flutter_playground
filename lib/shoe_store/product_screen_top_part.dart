import 'package:flutter/material.dart';
import 'package:flutter_playground2/shoe_store/utils.dart';

class ProductScreenTopPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: screenAwareSize(245, context),
      child: Stack(
        children: <Widget>[
          Container(
            // color: Colors.white10,
            child: Image.network(
              'https://s1.r29static.com/bin/shop/83a/x/2196108/image.png',
              width: double.infinity,
              height: double.infinity,
              // fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 70,
              left: 35,
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: screenAwareSize(40, context),
                height: screenAwareSize(40, context),
                decoration: BoxDecoration(
                  color: Colors.black26,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.rotate_90_degrees_ccw,
                  size: 30,
                  color: Colors.black45,
                ),
              ),
            ),
          ),
          Positioned(
            left: screenAwareSize(18, context),
            bottom: screenAwareSize(0, context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Rating',
                  style: TextStyle(
                    color: Color(0xFF949598),
                    fontSize: screenAwareSize(10, context),
                  ),
                ),
                SizedBox(
                  height: screenAwareSize(8, context),
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xFFFFE600),
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xFFFFE600),
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xFFFFE600),
                    ),
                    SizedBox(
                      width: screenAwareSize(5, context),
                    ),
                    Text(
                      '4.5',
                      style: TextStyle(color: Color(0xFFFFE600)),
                    ),
                    SizedBox(
                      width: screenAwareSize(5, context),
                    ),
                    Text(
                      '(378 people)',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
