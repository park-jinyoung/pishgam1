import 'package:flutter/material.dart';

class VerificationCode extends StatefulWidget {
  @override
  _VerificationCodeState createState() => _VerificationCodeState();
}

class _VerificationCodeState extends State<VerificationCode> {

  final _controller = TextEditingController();
  bool _isButtonEnabled=false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'كد تاييد را وارد كنيد',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily:'VazirMedium' ,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'کد تایید به شماره همراه شما ارسال شد',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily:'VazirMedium' ,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
                TextField(
                  onChanged: (val){
                    _isValid();
                  },
                  textDirection: TextDirection.ltr,
                  controller: _controller,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.limeAccent[700], width: 2.0),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RaisedButton(
                      disabledColor: Colors.grey[300],
                      child: Text(
                        'تاييد',
                        style: TextStyle(
                          fontFamily: 'VazirMedium',
                          fontSize: 17,
                          fontWeight: FontWeight.w100,
                          color:_isButtonEnabled? Colors.white: Colors.grey[700],
                        ),
                      ),
                      padding: EdgeInsets.only(left: 20,right: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                          side: BorderSide(color: _isButtonEnabled? Colors.grey[700]: Colors.grey[300])
                      ),
                      color: Colors.grey[700],
                      elevation: 2,
                      onPressed: _isButtonEnabled? (){} : null,
                    ),
                    FlatButton(
                      child: Text(
                        'ارسال دوباره',
                        style: TextStyle(
                          fontFamily: 'VazirMedium',
                          fontSize: 17,
                          color: Colors.grey[700],
                        ),
                      ),
                      onPressed:_isButtonEnabled? (){print('validated');} : null,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  bool _isValid(){
    setState(() {
      if(_controller.text.trim().length > 0) _isButtonEnabled= true;
      else _isButtonEnabled= false;
    });
    return _isButtonEnabled;
  }
}
