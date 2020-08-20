import 'dart:ui';
import 'package:flutter/material.dart';
import '../home.dart';
import '../widget/logo.dart';
import '../material/text_form_field.dart';
import '../material/buttons.dart';

class SignIn extends StatefulWidget {

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  ImageProvider logo = AssetImage("img/signinimg.jpg");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0E252D),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(Colors.black45, BlendMode.colorBurn),
                    image: logo,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * .14,
                left: MediaQuery.of(context).size.width * .24,
                child: Logo(),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * .44,
                left: MediaQuery.of(context).size.width * .08,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    TextFormFieldd(hintText: 'User Name', icon: Icons.person, obSecure: false,verticalPadding: .02,),
                    TextFormFieldd(hintText: 'Password', icon: Icons.lock_outline, obSecure: true,verticalPadding: .02,),
//                    Text(
//                      "Don't have an account ",
//                      style: TextStyle(
//                          color: Colors.white,
//                          fontSize: 15,
//                          fontFamily: 'LexendDeca'),
//                    ),
//                    InkWell(
//                      onTap: () => Navigator.push(context,
//                          MaterialPageRoute(builder: (context) => SignUp())),
//                      child: Padding(
//                        padding: EdgeInsets.symmetric(
//                            vertical: MediaQuery.of(context).size.height * .01),
//                        child: Text(
//                          'Creat account',
//                          style: TextStyle(
//                              color: Colors.white,
//                              fontSize: 15,
//                              fontFamily: 'LexendDeca',
//                              fontWeight: FontWeight.bold),
//                        ),
//                      ),
//                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height * .17,
                right: MediaQuery.of(context).size.width * .1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    SizedBox(height: MediaQuery.of(context).size.height * .1,),
                    InkWell(onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Home())),
                      child: Text('Forget Password',
                        style: TextStyle(color: Colors.white, fontSize: 14,
                            fontFamily: 'LexendDeca', fontWeight: FontWeight.w500),),),
                    SizedBox(height: MediaQuery.of(context).size.height * .06,),
                    InkWell(
                        onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));},
                        child: Buttons(
                          text: 'Sign In',btnwidth: .4,
                        )),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
