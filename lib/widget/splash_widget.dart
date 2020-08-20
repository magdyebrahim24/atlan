import 'package:flutter/material.dart';
import '../sign/sign_up.dart';
import '../sign/sign_in.dart';
import '../material/buttons.dart';

// ignore: must_be_immutable
class SplashWidget extends StatefulWidget {
  SplashWidget({this.high});
  double high;
  @override
  _SplashWidgetState createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:MediaQuery.of(context).size.height* widget.high,
      width: MediaQuery.of(context).size.width * .7,
      child: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * .02,
            ),
            child: InkWell(
                onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignIn(),
                    )),
                child: Buttons(
                  btnwidth: .68,
                  text: 'Log In',
                )),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Don't have an account ",
                style: TextStyle(
                    color: Colors.white, fontSize: 15, fontFamily: 'LexendDeca'),
              ),
              InkWell(
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignUp())),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * .01),
                  child: Text(
                    'Creat account',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'LexendDeca',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
