import 'package:flutter/material.dart';

class Tst extends StatefulWidget {
  @override
  _TstState createState() => _TstState();
}

class _TstState extends State<Tst> with SingleTickerProviderStateMixin{
  int x=0;
  Widget _item({fun(), IconData icn, String txt}) {
    return InkWell(
      onTap: () {
        fun();
      },
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * .025,
                horizontal: MediaQuery.of(context).size.width * .02),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6),
                  child: Icon(
                    icn,
                    size: 22,
                    color: Color(0xff0E252D),
                  ),
                ),
                Expanded(
                    child: Text(
                      txt,
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700,color: Color(0xff0E252D)),
                    )),
              ],
            ),
          ),
          Container(height: 1,color: Colors.black12,),
        ],
      ),
    );
  }

  Widget _button({fun(), String text,Color clor, double top}) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * top,
        bottom: MediaQuery.of(context).size.height * .015,
        left: MediaQuery.of(context).size.width * .215,
        right: MediaQuery.of(context).size.width * .215,

      ),
      child: InkWell(
        onTap: () {
          fun();
        },
        child: Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height * .07,
          width: MediaQuery.of(context).size.width * .65,
          decoration: BoxDecoration(
              color: clor,
              borderRadius: BorderRadius.circular(25)),
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 19),
          ),
        ),
      ),
    );
  }

  Widget body(){
    return ListView(
      padding: EdgeInsets.all(0),
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height *.29,
          width: MediaQuery.of(context).size.width ,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'img/location.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),

        Container(
            decoration: BoxDecoration(
                border: Border(top: BorderSide(color: Colors.white30),bottom: BorderSide(color: Colors.black12))),
            child: Padding(
              padding:  EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height *.03,
                horizontal: MediaQuery.of(context).size.width *.04,
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: <Widget>[
                  Text("Location Name"),
                  Padding(
                    padding:  EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height *.009,
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.star, color: Colors.yellow,size:20,),
                        Icon(Icons.star, color: Colors.yellow,size:20,),
                        Icon(Icons.star, color: Colors.yellow,size:20,),
                        Icon(Icons.star, color: Colors.yellow,size:20,),
                        Icon(Icons.star, color: Colors.yellow,size:20,),
                      ],
                    ),
                  ),
                  Text("Service Type",style: TextStyle(fontSize: 12),),
                ],
              ),
            )),
        _item(txt: 'Servica Location Address',icn: Icons.location_on),
        _item(txt: '01552154105',icn: Icons.phone),
        _item(txt: 'Work Times',icn: Icons.access_time),

        x == 0?
        _button(text: 'Request', clor: Colors.teal, fun: (){
          setState(() {x=1;});
        }, top: 0.04,):
        Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*.02),
          child: Column(
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Padding(
                    padding: EdgeInsets.only(right: MediaQuery.of(context).size.width* .02),
                    child: Text("Wait For Response",style: TextStyle(color: Colors.black54,fontSize: 13)
                    ),
                  ),
                  SizedBox(height: 20,width:20,child: CircularProgressIndicator(strokeWidth: 1,valueColor: new AlwaysStoppedAnimation<Color>(Colors.black54)))

                ],),
              _button(text: 'Cancel',fun:(){setState(() {x=0;});}, clor: Colors.red[400], top: .01)
            ],
          ),
        ),
      ],
    );
  }

  int y = 1;


  void initState() {
    _controller =
    AnimationController(vsync: this, duration: Duration(milliseconds: 500))
      ..addListener(() {
        setState(() {});
      });

    _animation =
        Tween<double>(begin: 0, end: 570 ).animate(_controller);

    super.initState();
  }

  AnimationController _controller;
  Animation<double> _animation;

  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25)),
                color: Colors.white,
              ),
      height: _animation.value,

      width: MediaQuery.of(context).size.width,
              child: ListView(
                padding: EdgeInsets.all(0),
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * .02,
                      horizontal: MediaQuery.of(context).size.width * .2,
            ),
                    height: 5,
                    width: MediaQuery.of(context).size.width * .70,
                    color: Colors.black54,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .84,
                    child: body(),
                  ),
                ],
              ),
            );
//        floatingActionButton: RaisedButton(
//          color: Colors.red,
//          child: Icon(Icons.access_time),
//          onPressed: (){
//            _onEvent();
//            setState(() {
//              if (y == 0){y=1;}
//              else {y=0;}
//            });
//          },
//        ),
  }

  onEvent() {
    if (_controller.isCompleted) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
