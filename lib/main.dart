import 'package:flutter/material.dart';
import 'package:flutter_playground2/screens/currency_app_screen.dart';
import 'package:flutter_playground2/screens/home_screen.dart';

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
      },
    );
  }
}
