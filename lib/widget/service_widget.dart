import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Service extends StatefulWidget {
  Service({this.imgPath,this.txt,this.clor});
  final  imgPath ;
  final  txt ;
  Color clor;
  @override
  _ServiceState createState() => _ServiceState();
}

class _ServiceState extends State<Service> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * .009),
      child: Container(
        height: MediaQuery.of(context).size.height * .165,
        width: MediaQuery.of(context).size.width * .31,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: widget.clor.withOpacity(0.5), width: 2.0,),
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              widget.imgPath.toString(),
              height: MediaQuery.of(context).size.height * .1,
              width: MediaQuery.of(context).size.width * .2,
              fit: BoxFit.cover,
            ),
            Text(widget.txt.toString(),style: TextStyle(color: widget.clor,fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
