import 'package:atlan/drawer/drawer_screens/setting.dart';
import 'package:flutter/material.dart';
import '../widget/item.dart';
import '../widget/social_icons.dart';
import 'drawer_screens/profile.dart';
import 'drawer_screens/contactUs.dart';

class DrawerContent extends StatefulWidget {
  @override
  _DrawerContentState createState() => _DrawerContentState();
}

class _DrawerContentState extends State<DrawerContent> {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomLeft,
                  colors: [
                     Color(0xff01a1a1a),Color(0xff01a1a1a), Color(0xff0222324), Color(0xff0262829),
                    Color(0xff02d3133), Color(0xff0313638), Color(0xff0444d50),
                  ])),
          height: MediaQuery.of(context).size.height * .5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * .04,
                  horizontal: MediaQuery.of(context).size.width * .057,
                ),
                child: Text(
                  '3TLAN',
                  style: TextStyle(fontSize: 28, color: Color(0xff0c6d630)),
                ),
              ),
              Expanded(
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePage()));
                      },
                      child: Item(
                        txt: 'Profile',
                        icn: Icons.account_circle,
                      ))),
              Expanded(
                  child: Item(
                txt: 'Discovery',
                icn: Icons.blur_circular,
              )),
              Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ContactUs()));
                    },
                    child: Item(
                txt: 'Contact',
                icn: Icons.mail_outline,
              ),
                  )),
              Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SettingPage()));
                    },
                    child: Item(
                txt: 'Setting',
                icn: Icons.settings,
              ),
                  )),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * .465,
          color: Color(0xff0313537),
          child: Column(
            children: <Widget>[
              SizedBox(height: 20,),
              Expanded(
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 20,),
                    Expanded(
                      child: Text(
                        'ABOUT',
                        style: TextStyle(fontSize: 14, color: Color(0xff09c9fa0)),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'TESTIMONIALS',
                        style: TextStyle(fontSize: 14, color: Color(0xff09c9fa0)),
                      ),
                    ),
                    SizedBox(width: 12,),

                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 20,),
                    Expanded(
                      child: Text(
                        'HELP',
                        style: TextStyle(fontSize: 14, color: Color(0xff09c9fa0)),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'ADVERTISE',
                        style: TextStyle(fontSize: 14, color: Color(0xff09c9fa0)),
                      ),
                    ),
                    SizedBox(width: 12,),

                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 20,),
                    Expanded(
                      child: Text(
                        'TERMS',
                        style: TextStyle(fontSize: 14, color: Color(0xff09c9fa0)),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'INTEGRATIONS',
                        style: TextStyle(fontSize: 14, color: Color(0xff09c9fa0)),
                      ),
                    ),
                    SizedBox(width: 12,),

                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 20,),
                    Expanded(
                      child: Text(
                        'CAREERS',
                        style: TextStyle(fontSize: 14, color: Color(0xff09c9fa0)),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'GUDLINES',
                        style: TextStyle(fontSize: 14, color: Color(0xff09c9fa0)),
                      ),
                    ),
                    SizedBox(width: 12,),

                  ],
                ),
              ),
              Expanded(child: SocialIcons(),)
            ],
          ),
        ),
//        Padding(
//          padding: EdgeInsets.symmetric(
//            vertical: MediaQuery.of(context).size.height * .02,
//          ),
//          child: SocialIcons(),
//        ),
      ],
    );
  }
}
