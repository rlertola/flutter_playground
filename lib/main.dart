import 'package:flutter/material.dart';
import 'package:flutter_playground2/box_menu/rotated_menu.dart';
import 'package:flutter_playground2/circle/circle_button.dart';
import 'package:flutter_playground2/flight_app/curved_tab_bar.dart';
import 'package:flutter_playground2/flight_app/flight_app_screen.dart';
import 'package:flutter_playground2/path/curved_container.dart';

import 'flight_app/flight_app_screen.dart';
import 'screens/home_screen.dart';
import 'shoe_store/shoe_store_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: HomeScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        FlightAppScreen.routeName: (context) => FlightAppScreen(),
        ShoeStoreScreen.routeName: (context) => ShoeStoreScreen(),
        CircleButton.routeName: (context) => CircleButton(),
        CurvedContainer.routeName: (context) => CurvedContainer(),
        RotatedMenu.routeName: (context) => RotatedMenu(),
      },
    );
  }
}
