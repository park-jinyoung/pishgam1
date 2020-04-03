import 'dart:ui';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'پيش',
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
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(30, 75, 30, 0),
                      decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(20.0),
                        shape: BoxShape.rectangle,
                        color: Colors.white.withOpacity(0.3),
                      ),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 50, 60, 5),
                            child: Text(
                              'نام کاربری یا ایمیل',
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontFamily: 'Iranian_Sans',
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(40, 5, 40, 0),
                            child: TextField(
                              style: TextStyle(
                                height: 1.0,
                              ),
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  new BorderSide(color: Colors.white),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                border: new OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(15.0),
                                  ),
                                ),
                              ),
                              autocorrect: true,
                            ),
                          ),
                          SizedBox(height: 35),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 60, 5),
                            child: Text(
                              'رمزعبور',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                fontFamily: 'Iranian_Sans',
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(40, 5, 40, 25),
                            child: TextField(
                              toolbarOptions: ToolbarOptions(
                                paste: false,
                              ),
                              obscureText: true,
                              style: TextStyle(
                                height: 1.0,
                              ),
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  new BorderSide(color: Colors.white),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                border: new OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(15.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: RaisedButton(
                              color: Colors.yellowAccent[700],
                              child: Text(
                                'ورود',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  fontFamily: 'Vazir',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              onPressed: () {},
                              elevation: 0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              textDirection: TextDirection.rtl,
                              children: <Widget>[
                                Text(
                                  'اکانت ندارید؟',
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    fontFamily: 'Vazir-Medium',
                                    fontSize: 11,
                                  ),
                                ),
                                SizedBox(width: 5),
                                GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    'ثبت نام کنید',
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      color: Colors.yellowAccent[700],
                                      fontFamily: 'Vazir-medium',
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 50),
                    GestureDetector(
                      onTap: () {},
                      child: Center(
                        child: Text(
                          'ورود بدون ثبت نام',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            fontFamily: 'Vazir',
                            color: Colors.white,
                            shadows: [
                              Shadow(blurRadius: 10, color: Colors.black54)
                            ],
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 45),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, left: 10),
                      child: Text(
                        'Tetha',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Champagne & Limousines',
                          shadows: [
                            Shadow(blurRadius: 10, color: Colors.black54)
                          ],
                          height: 2.7,
                        ),
                      ),
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