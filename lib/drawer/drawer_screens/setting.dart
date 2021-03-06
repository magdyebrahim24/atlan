import 'package:atlan/home.dart';
import 'package:flutter/material.dart';
import 'privacyPolicy.dart';
import '../../widget/item.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
//  void _changeTheme(BuildContext buildContext, MyThemeKeys key) {
//    CustomTheme.instanceOf(buildContext).changeTheme(key);
//  }
  static bool checkLite = true;
  static bool checkDark = false;

  bool _switchValue = false;
  bool check = true;
  void _onChangedSwitch(bool value) => setState(() => _switchValue = value);

  // item [ row ] that has text  [ languae & icon ] ...
  Widget item(String text, IconData icon1) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(
              icon1,
              color: Theme.of(context).accentColor,
              size: 22,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: TextStyle(color: Theme.of(context).accentColor),
            ),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding:  EdgeInsets.only(
                  left: MediaQuery.of(context).size.width*.02,
                  top: MediaQuery.of(context).size.height*.05,
              ),
              child: Row(
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      color: Theme.of(context).accentColor,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      }),
                  Padding(
                    padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*.23),
                    child: Text(
                      'Settings',
                      style: TextStyle(
                        fontSize: 22,
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .1,
            ),
            InkWell(
              onTap: () {},
              child: Item(
                txt: 'Language',
                icn: Icons.language,
              ),
            ),
            InkWell(
              onTap: () {
                _onChangedSwitch(check);
                setState(() {
                  check = false;
                });
              },
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 17),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon(
                        Icons.notifications_none,
                        color: Color(0xff0c6d630),
                        size: 26,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Notifaction',
                        style: TextStyle(color: Color(0xff0c6d630)),
                      ),
                    ),
                    Switch(value: _switchValue, onChanged: _onChangedSwitch),
                  ],
                ),
              ),
            ),
            Item(
              txt: 'Mode',
              icn: Icons.color_lens,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 70),
              child: InkWell(
                borderRadius: BorderRadius.circular(20),
//                onTap: () {
//                  setState(() {
//                    checkLite = true;
//                    checkDark = false;
//                  });
//                  _changeTheme(context, MyThemeKeys.LIGHT);
//                },
                child: SizedBox(
                  height: 40,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text(
                        'Lite Mode',
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                        ),
                      )),
                      checkLite == false
                          ? SizedBox()
                          : Icon(
                              Icons.check,
                              color: Theme.of(context).accentColor,
                            ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 70),
              child: InkWell(
//                onTap: () {
//                  setState(() {
//                    checkLite = false;
//                    checkDark = true;
//                  });
//                  _changeTheme(context, MyThemeKeys.DARKER);
//                },
                borderRadius: BorderRadius.circular(20),
                child: SizedBox(
                  height: 40,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text(
                        'Dark Mode',
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                        ),
                      )),
                      checkDark == false
                          ? SizedBox()
                          : Icon(
                              Icons.check,
                              color: Theme.of(context).accentColor,
                            ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            item('Version: 1.0.0+1', Icons.phone_android),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PrivacyPolicy()));
                },
                child: item('Privacy Policy', Icons.lock_outline)),
          ],
        ),
      ),
    );
  }
}
