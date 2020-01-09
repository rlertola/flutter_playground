import 'package:flutter/material.dart';
import 'package:flutter_playground2/flight_app/curved_tab_bar.dart';
import 'package:flutter_playground2/flight_app/flight_app_screen.dart';

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
        CurvedTabBar.routeName: (context) => CurvedTabBar(),
      },
    );
  }
}
