import 'package:flutter/material.dart';
import 'package:mobileuiux/classes/repository/BillRepository.dart';
import 'package:mobileuiux/classes/repository/verificationRepository.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';
import 'package:provider/provider.dart';
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

    bool _isClicked = false;

    TextEditingController _t1 = TextEditingController();
    TextEditingController _t2 = TextEditingController();
    TextEditingController _t3 = TextEditingController();
    TextEditingController _t4 = TextEditingController();
    TextEditingController _t5 = TextEditingController();
    TextEditingController _t6 = TextEditingController();

    FocusNode n1 = FocusNode();
    FocusNode n2 = FocusNode();
    FocusNode n3 = FocusNode();
    FocusNode n4 = FocusNode();
    FocusNode n5 = FocusNode();

    return ChangeNotifierProvider(
      create: (context) => verifyUser(),
      child: Form(
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
                        width: MediaQuery.of(context).size.width / 7,
                        child: TextField(
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.grey[800],
                            height: 2,
                          ),
                          controller: _t1,
                          onChanged: (s) {
                            // _pin = _pin + _t1.text;
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
                        width: MediaQuery.of(context).size.width / 7,
                        child: TextField(
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.grey[800],
                            height: 2,
                          ),
                          focusNode: n1,
                          controller: _t2,
                          onChanged: (s) {
                            // _pin = _pin + _t2.text;
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
                        width: MediaQuery.of(context).size.width / 7,
                        child: TextField(
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.grey[800],
                            height: 2,
                          ),
                          focusNode: n2,
                          controller: _t3,
                          onChanged: (s) {
                            // _pin = _pin + _t3.text;
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
                        width: MediaQuery.of(context).size.width / 7,
                        child: TextField(
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.grey[800],
                            height: 2,
                          ),
                          focusNode: n3,
                          controller: _t4,
                          onChanged: (s) {
                            // _pin = _pin + _t4.text;
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
                        width: MediaQuery.of(context).size.width / 7,
                        child: TextField(
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.grey[800],
                            height: 2,
                          ),
                          focusNode: n4,
                          controller: _t5,
                          onChanged: (s) {
                            // _pin = _pin + _t5.text;
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
                        width: MediaQuery.of(context).size.width / 7,
                        child: TextField(
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.grey[800],
                            height: 2,
                          ),
                          focusNode: n5,
                          controller: _t6,
                          onChanged: (s) {
                            // _pin = _pin + _t6.text;
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
                  Consumer<verifyUser>(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                      child: SizedBox(
                        height: 60,
                        width: 350,
                        child: OutlineButton(
                          onPressed: () async {
                            _pin = _pin +
                                _t1.text +
                                _t2.text +
                                _t3.text +
                                _t4.text +
                                _t5.text +
                                _t6.text;
                            print(_pin);
                           
                            verifyUser v = verifyUser.start(
                                countryCode: countryCode,
                                number: number,
                                otp: _pin);
                                await v.authApicall();

                            _isClicked = !_isClicked;
                            // if (!v.loading)
                            Navigator.pushNamed(context, '/home');
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
                    builder: (context, v, child) {
                      return child;
                    },
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
                    onTap: () {
                      _t1.clear();
                      _t2.clear();
                      _t3.clear();
                      _t4.clear();
                      _t5.clear();
                      _t6.clear();
                      _pin = '';
                      verifyUser v = verifyUser.start(
                          countryCode: countryCode, number: number, otp: _pin);
                    },
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
      ),
    );
  }
}

