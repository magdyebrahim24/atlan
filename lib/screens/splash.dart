import 'package:flutter/material.dart';
import 'dart:async';
import '../widget/logo.dart';
import '../widget/splash_widget.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  final double minSize = 0;
  final double maxSize = .28;
  double leftPosition = .25 ;
  int x = 0;
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1,milliseconds: 300),
    )..addListener(() {
        setState(() {});
      });
    Future.delayed(const Duration(seconds: 6), () {
      setState(() {
        _onEvent();
        x = 1;
        leftPosition = 0.15 ;
      });
    });
    _animation =
        Tween<double>(begin: minSize, end: maxSize).animate(_controller);
    super.initState();
  }
  AnimationController _controller;
  Animation<double> _animation;
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
                    ColorFilter.mode(Colors.black26, BlendMode.colorBurn),
                image: AssetImage(
                  'img/splashimg.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.width * .15,
            left: MediaQuery.of(context).size.width * leftPosition,
            child: Column(
              children: <Widget>[
                Logo(),
                x == 1 ? SplashWidget(high: _animation.value,) : SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _onEvent() {
    if (_controller.isCompleted) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
  }
}
