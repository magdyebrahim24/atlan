import 'package:flutter/material.dart';
import '../../home.dart';
import '../../widget/social_icons.dart';
import '../../widget/item.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  Widget item(String text, IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 50,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              icon,
              color: Theme.of(context).accentColor,
              size: 30,
            ),
          ),
          Text(
            text,
            style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Theme.of(context).accentColor,
                fontSize: 19),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
                colors: [
              Color(0xff01a1a1a),
              Color(0xff01a1a1a),
              Color(0xff0222324),
              Color(0xff0262829),
              Color(0xff02d3133),
              Color(0xff0313638),
              Color(0xff0444d50),
            ])),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .07
                  ,left: MediaQuery.of(context).size.width * .05),
              child: Row(
                children: <Widget>[
                  InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xff0c6d630),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .3,
            ),
            Text(
              'You Con Contact With Us on',
              style: TextStyle(
                color: Color(0xff0c6d630),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .1,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * .15),
              child: Item(
                icn: Icons.mail_outline,
                txt: 'MeGa@gmail.com',
              ),
            ),

            // for divider container  [ -------  or Contact Wit Us ---------  ]
            Padding(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 1,
                    color: Colors.blueGrey,
                    width: 100,
                  ),
                  Text('    OR    ',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff0c6d630),
                      )),
                  Container(
                    height: 1,
                    color: Colors.blueGrey,
                    width: 100,
                  ),
                ],
              ),
            ),

            SocialIcons(),
          ],
        ),
      ),
    );
  }
}
