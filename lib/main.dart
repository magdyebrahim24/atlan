import 'package:flutter/material.dart';
import 'screens/splash.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      title: '3TLAN',
      theme: ThemeData(
        accentColor: Color(0xff0c6d630),
          textTheme: TextTheme(
              body1: TextStyle(
                fontSize: 19,
                fontFamily: 'Comfortaa',
                color: Color(0xff0E252D),
              ))),

      home: Splash(),
    );
  }
}
