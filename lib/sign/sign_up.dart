import 'package:flutter/material.dart';
import '../home.dart';
import '../material/text_form_field.dart';
import '../material/buttons.dart';
import 'sign_in.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  ImageProvider logo = AssetImage("img/signinimg.jpg");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0E252D),
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter:
                    ColorFilter.mode(Colors.black45, BlendMode.colorBurn),
                image: logo,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .05,
            left: MediaQuery.of(context).size.width * .018,
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.keyboard_arrow_left),onPressed:() =>
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn())),
                  color: Colors.white,iconSize: 40,),
                SizedBox(width: MediaQuery.of(context).size.width * .2,),
                Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 25),)
              ],
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * .05,
            left: MediaQuery.of(context).size.width * .07,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TextFormFieldd(hintText: 'User_Name', icon: Icons.person, obSecure: false,verticalPadding: .03,),
                TextFormFieldd(hintText: 'Mobile Number', icon: Icons.phone_iphone, obSecure: true,verticalPadding: .03,),
                TextFormFieldd(hintText: 'Password', icon: Icons.lock_outline, obSecure: true,verticalPadding: .03,),
                TextFormFieldd(hintText: 'Confirm Password', icon: Icons.lock_outline, obSecure: true,verticalPadding: .03,),
                Padding(
                  padding: EdgeInsets.only(top: 12,bottom: 5),
                  child: Text("By Passing 'Sign Up' you agree to our",style: TextStyle(
                    fontSize: 13,color: Colors.blueGrey[100],
                  )),
                ),
                Text("Terms & Conditions",style: TextStyle(fontSize: 13,color: Colors.yellow,decoration: TextDecoration.underline,)),

                SizedBox(height: MediaQuery.of(context).size.height * .06,),
                InkWell(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Home())),
                  child: Buttons(text: 'Sign Up',btnwidth: .7 ,),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
