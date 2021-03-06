import 'package:flutter/material.dart';

class PrivacyPolicy extends StatefulWidget {
  @override
  _PrivacyPolicyState createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Column(
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
                        Navigator.pop(context);
                      }),
                  Padding(
                    padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*.2),
                    child: Text(
                      'Private Policy',
                      style: TextStyle(
                        fontSize: 20,
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .865,
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding:  EdgeInsets.all(10.0),
                    child: Text('Cookies usually are the trickiest part of making your website compliant with regulations for privacy and data protection.Most of the other data collection activities going on in connection to your website are both static and visible: The contact form or newsletter-subscription only changes if you actively make changes to it, and the user is aware of giving personal information when they chose to fill them out.Cookies, on the other hand, operate in the background.They are quietly dropped on the user’s computer without the user (or sometimes even the website owner, for that sake) being aware of what is going on.',
                      style: TextStyle(  color: Theme.of(context).accentColor,fontSize: 16
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Privacy policy and GDPR The General Data Protection Regulation requires that the communication about the use of data is both specific and accurate. This means, in practice, that whereas the remainder of the privacy policy may be a static document, the section on cookies should be updated fairly regularly. This issue can be solved if you choose a cookie solution like Cookiebot for your website.Cookiebot performs monthly scans of your website, giving a complete overview of the cookies in use.',
                      style: TextStyle(  color: Theme.of(context).accentColor,fontSize: 16
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
