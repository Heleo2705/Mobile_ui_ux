import 'package:flutter/material.dart';
import 'package:mobileuiux/classes/repository/verificationRepository.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Map _data = ModalRoute.of(context).settings.arguments;

    String number = _data['number'];
    String countryCode = _data['countryCode'];
    String _pin = "";

    TextEditingController _t = TextEditingController();
    FocusNode n1 = FocusNode();
    FocusNode n2 = FocusNode();
    FocusNode n3 = FocusNode();
    FocusNode n4 = FocusNode();
    FocusNode n5 = FocusNode();

    return Form(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(''),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black, size: 30),
        ),
        body: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                //Intro text
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Verify Mobile Number',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 4,
                  width: 60,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 4, color: Colors.black)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'We have sent a 4 digit verification code on\n',
                  style: TextStyle(color: Colors.grey[700], fontSize: 13),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      number,
                      style: TextStyle(color: Colors.grey[700], fontSize: 13),
                    ),
                    Icon(
                      Icons.edit,
                      color: Colors.grey[700],
                      size: 13,
                    )
                  ],
                ),

                //TextInput field for otp
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    // SizedBox(
                    //   width: 50,
                    // ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/7,
                      child: TextField(
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.grey[800],
                          height: 2,
                        ),
                        controller: TextEditingController(),
                        onChanged: (s) {
                          _pin = _pin + s;
                          FocusScope.of(context).requestFocus(n1);
                        },
                        maxLength: 1,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey[800], width: 2))),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/7,
                      child: TextField(
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.grey[800],
                          height: 2,
                        ),
                        focusNode: n1,
                        controller: TextEditingController(),
                        onChanged: (s) {
                          _pin = _pin + s;
                          FocusScope.of(context).requestFocus(n2);
                        },
                        maxLength: 1,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey[800], width: 2))),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/7,
                      child: TextField(
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.grey[800],
                          height: 2,
                        ),
                        focusNode: n2,
                        controller: TextEditingController(),
                        onChanged: (s) {
                          _pin = _pin + s;
                          FocusScope.of(context).requestFocus(n3);
                        },
                        maxLength: 1,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey[800], width: 2))),
                      ),
                    ),
                    SizedBox(
                      width:MediaQuery.of(context).size.width/7,
                      child: TextField(
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.grey[800],
                          height: 2,
                        ),
                        focusNode: n3,
                        controller: TextEditingController(),
                        onChanged: (s) {
                          _pin = _pin + s;
                          FocusScope.of(context).requestFocus(n4);
                        },
                        maxLength: 1,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey[800], width: 2))),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/7,
                      child: TextField(
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.grey[800],
                          height: 2,
                        ),
                        focusNode: n4,
                        controller: TextEditingController(),
                        onChanged: (s) {
                          _pin = _pin + s;
                          FocusScope.of(context).requestFocus(n5);
                        },
                        maxLength: 1,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey[800], width: 2))),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/7,
                      child: TextField(
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.grey[800],
                          height: 2,
                        ),
                        focusNode: n5,
                        controller: TextEditingController(),
                        onChanged: (s) {
                          _pin = _pin + s;
                          // FocusScope.of(context).requestFocus(n1);
                        },
                        maxLength: 1,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey[800], width: 2))),
                      ),
                    ),
                    // SizedBox(
                    //   width: 50,
                    // ),
                  ],
                ),

                //Continue button
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: SizedBox(
                    height: 60,
                    width: 350,
                    child: OutlineButton(
                      onPressed: () {
                        print(_pin);
                        verifyUser v=verifyUser(countryCode: countryCode,number: number,otp: _pin);
                        Navigator.pushReplacementNamed(context, '/home');
                      },
                      textColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      borderSide: BorderSide(color: Colors.black, width: 1),
                      padding: EdgeInsets.all(15),
                      child: Text(
                        'CONTINUE',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),

                //Didn't received a code option
                Text(
                  'Didn\'t received the code yet? \n',
                  style: TextStyle(color: Colors.grey[700], fontSize: 13),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Resend Code \n',
                    style: TextStyle(
                        color: Colors.cyan[600],
                        fontSize: 16,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
