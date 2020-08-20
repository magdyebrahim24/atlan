import 'dart:ui';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFormFieldd extends StatefulWidget {

  TextFormFieldd({icon ,hintText ,textController,obSecure,verticalPadding}){
    this.icon = icon;
    this.verticalPadding = verticalPadding;
    this.hintText = hintText;
    this.textController = textController;
    this.obSecure = obSecure;
  }
  IconData icon;
  String hintText;
  TextEditingController textController;
  bool obSecure = false;
  double verticalPadding = .03 ;

  @override
  _TextFormFielddState createState() => _TextFormFielddState();
}
class _TextFormFielddState extends State<TextFormFieldd> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .85,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * widget.verticalPadding, ),
        padding: EdgeInsets.only(top: 2,bottom: 2),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xff05b696e),
                blurRadius: 15.0, // has the effect of softening the shadow
                spreadRadius: 2.0, // has the effect of extending the shadow
              )
            ],
//          border: Border.all(color: Colors.white.withOpacity(0.5), width: 2.0,),
          borderRadius: BorderRadius.circular(20.0),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
                colors: [Color(0xff01a1a1a),Color(0xff0222324),Color(0xff0262829),Color(0xff02d3133),
                  Color(0xff0313638),Color(0xff0444d50),Color(0xff0525f63),Color(0xff0576469),Color(0xff05d6c71),])

        ),

        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: Icon(
                widget.icon,
                color: Colors.white,
              ),
            ),
            Container(
              height: 30.0,
              width: 2.0,
              color: Colors.white.withOpacity(0.5),
              margin: const EdgeInsets.only(left: 00.0, right: 10.0),
            ),
            Expanded(
              child: TextFormField(
                controller: widget.textController,
                style: TextStyle(color: Colors.white),
                obscureText: widget.obSecure,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: widget.hintText,
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
