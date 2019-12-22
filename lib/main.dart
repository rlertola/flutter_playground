import 'package:flutter/material.dart';

import 'currency_app/currency_app_screen.dart';
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
        CurrencyAppScreen.routeName: (context) => CurrencyAppScreen(),
        ShoeStoreScreen.routeName: (context) => ShoeStoreScreen(),
      },
    );
  }
}
