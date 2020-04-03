import 'dart:ui';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pishgam/sign%20in%20_%20anonymous%20entry.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {

  AnimationController _controller;
  AnimationController _controller2;
  Animation<RelativeRect> _animationPishgamMoveToTop;
  Animation<RelativeRect> _animationTetha;
  Animation _animationMoveToSignInPage;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
    );
    _controller2 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 4700),
    );

    _animationPishgamMoveToTop=  RelativeRectTween(begin:RelativeRect.fromLTRB(0, 200, 19, 0), end: RelativeRect.fromLTRB(0, 60, 19, 0),)
        .animate(CurvedAnimation(
      parent: _controller,
      curve: Interval(0.6,1.0, curve: Curves.linear),
    ),
    ) ;


    _animationTetha=  RelativeRectTween(begin:RelativeRect.fromLTRB(152, 733, 0, 0), end: RelativeRect.fromLTRB(10, 733, 0, 0),)
        .animate(CurvedAnimation(
      parent: _controller,
      curve: Interval(0.6,1.0, curve: Curves.linear),
    ),
    ) ;
    _animationMoveToSignInPage= Tween(begin: 0.0 , end: 1.0).animate(CurvedAnimation(
      parent: _controller2,
      curve: Interval(0.9,1.0, curve: Curves.linear),
    ),);


    _controller.forward();
    _controller2.forward();

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
    _controller2.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget pishgam = Center(
      child: RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:' پیشـــــــــ',
              style: TextStyle(
                fontFamily: 'Vazir',
                fontSize: 41,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            TextSpan(
              text: 'گام',
              style: TextStyle(
                fontFamily: 'Vazir',
                fontSize: 41,
                fontWeight: FontWeight.bold,
                color: Colors.limeAccent[700],
              ),
            ),
          ],
        ),
      ),
    );

    Widget tetha= Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(
        'Tetha',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w900,
          fontFamily: 'Champagne & Limousines',
        ),
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: 780,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                color: Colors.white.withOpacity(0.2),
                child:Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    PositionedTransition(
                      rect:_animationPishgamMoveToTop,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 30,right: 0),
                            child: pishgam,
                          ),
                        ],
                      ),
                    ),
                    const SpinKitThreeBounce(
                      color: Colors.white,
                    ),
                    PositionedTransition(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          tetha,
                        ],
                      ),
                      rect:_animationTetha,
                    ),
                    FadeTransition(
                      child: SignIn(),
                      opacity: _animationMoveToSignInPage,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
