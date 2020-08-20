import 'package:flutter/material.dart';
import '../../widget/profile_avatar.dart';
import '../../widget/item.dart';
import '../../sign/sign_in.dart';
import '../../home.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Widget item({String txt, IconData icn}) {
    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .05),
          child: Icon(
            icn,
            color: Color(0xff0c6d630),
            size: 26,
          ),
        ),
        Expanded(child: Text(txt, style: TextStyle(color: Color(0xff0c6d630)))),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * .43,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomLeft,
                    colors: [
                  Colors.black, Color(0xff01a1a1a), Color(0xff0222324), Color(0xff0262829),
                  Color(0xff02d3133), Color(0xff0313638), Color(0xff0444d50), Color(0xff0525f63), Color(0xff0576469),
                ])),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(children: <Widget>[
                  IconButton(icon: Icon(Icons.arrow_back_ios),color: Color(0xff0c6d630),
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));},

                  ),
                ],),
                ProfileAvatar(),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * .015),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Migo Amasha',
                        style:
                            TextStyle(fontSize: 17, color: Color(0xff0c6d630)),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.phone_iphone,
                            color: Color(0xff0c6d630),
                            size: 20,
                          ),
                          Text(
                            '01552154105',
                            style: TextStyle(
                                fontSize: 16, color: Color(0xff0c6d630)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * .57,
            color: Colors.black,
            child: Column(
              children: <Widget>[
                Expanded(child: Item(txt: 'Edit Profile',icn: Icons.edit,)),
                Expanded(child: Item(txt: 'Change Password',icn: Icons.lock_outline,)),
                Expanded(child: Item(txt: 'Payment Method',icn: Icons.credit_card,)),
                Expanded(
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignIn()));
                        },
                        child: item(txt: 'Sign Out', icn: Icons.arrow_back))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
