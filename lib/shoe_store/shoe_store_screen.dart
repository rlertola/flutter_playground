import 'package:flutter/material.dart';
import 'package:flutter_playground2/shoe_store/product_screen_bottom_part.dart';
import 'package:flutter_playground2/shoe_store/product_screen_top_part.dart';
import 'package:flutter_playground2/shoe_store/utils.dart';

class ShoeStoreScreen extends StatelessWidget {
  static const routeName = '/shoe_store_screen.dart';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF696D77), Color(0xFF292C36)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          tileMode: TileMode.clamp,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: screenAwareSize(20, context),
            ),
            onPressed: () {},
          ),
          title: Text(
            'Energy Cloud',
            style: TextStyle(
              color: Colors.white,
              fontSize: screenAwareSize(18, context),
              // fontFamily: "",
            ),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.favorite_border,
                size: screenAwareSize(20, context),
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ProductScreenTopPart(),
              ProductScreenBottomPart(),
            ],
          ),
        ),
      ),
    );
  }
}
