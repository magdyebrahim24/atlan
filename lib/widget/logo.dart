import 'package:flutter/material.dart';

class Logo extends StatefulWidget {
  @override
  _LogoState createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          '3TLAN',
          style: TextStyle(
              color: Colors.white, fontSize: 60, fontFamily: 'LobsterTwo'),
        ),
        SizedBox(height: 5,),
            Text(
              'Your gide On the',
              style: TextStyle(
                  color: Colors.white, fontSize: 17, fontFamily: 'LobsterTwo'),
            ),
            Text(
              'Road',
              style: TextStyle(
                  color: Colors.white, fontSize: 17, fontFamily: 'LobsterTwo'),
            ),

      ],
    );
  }
}
