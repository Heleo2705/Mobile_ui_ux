import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobileuiux/classes/repository/BillRepository.dart';
import 'package:mobileuiux/classes/repository/verificationRepository.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
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
    BuildContext _context1 = context;

    String number = _data['number'];
    String countryCode = _data['countryCode'];
    String _pin = "";

    bool _isClicked = false;

    TextEditingController _t1 = TextEditingController();

    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    FocusNode n0 = FocusNode();
    // FocusNode n1 = FocusNode();
    // FocusNode n2 = FocusNode();
    // FocusNode n3 = FocusNode();
    // FocusNode n4 = FocusNode();
    // FocusNode n5 = FocusNode();

    var medFont = 20.0;
    var otpBoxHeight = 1.5;
    return ChangeNotifierProvider(
      create: (context) => verifyUser(),
      child: Form(
        key: _formKey,
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
                    'We have sent a 6 digit verification code on\n',
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
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 100,
                          child: TextFormField(
                            autofocus: true,
                            style: TextStyle(
                              fontSize: medFont,
                              color: Colors.grey[800],
                              height: otpBoxHeight,
                            ),
                            validator: (s) {
                              if (s.length < 6) return "Input OTP correctly";
                              return null;
                            },
                            controller: _t1,
                            focusNode: n0,
                            textAlign: TextAlign.center,
                            onChanged: (s) {},
                            maxLength: 6,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey[800], width: 2))),
                          ),
                        ),
                        // SizedBox(
                        //   width: MediaQuery.of(context).size.width / 9,
                        //   child: TextField(
                        //     style: TextStyle(
                        //       fontSize: medFont,
                        //       color: Colors.grey[800],
                        //       height: otpBoxHeight,
                        //     ),
                        //     focusNode: n1,
                        //     controller: _t2,
                        //     textAlign: TextAlign.center,
                        //     onChanged: (s) {

                        //     },
                        //     maxLength: 1,
                        //     keyboardType: TextInputType.number,
                        //     decoration: InputDecoration(
                        //         enabledBorder: UnderlineInputBorder(
                        //             borderSide: BorderSide(
                        //                 color: Colors.grey[800], width: 2))),
                        //   ),
                        // ),
                        // SizedBox(
                        //   width: MediaQuery.of(context).size.width / 9,
                        //   child: TextField(
                        //     style: TextStyle(
                        //       fontSize: medFont,
                        //       color: Colors.grey[800],
                        //       height: otpBoxHeight,
                        //     ),
                        //     focusNode: n2,
                        //     controller: _t3,
                        //     textAlign: TextAlign.center,
                        //     onChanged: (s) {

                        //     },
                        //     maxLength: 1,
                        //     keyboardType: TextInputType.number,
                        //     decoration: InputDecoration(
                        //         enabledBorder: UnderlineInputBorder(
                        //             borderSide: BorderSide(
                        //                 color: Colors.grey[800], width: 2))),
                        //   ),
                        // ),
                        // SizedBox(
                        //   width: MediaQuery.of(context).size.width / 9,
                        //   child: TextField(
                        //     style: TextStyle(
                        //       fontSize: medFont,
                        //       color: Colors.grey[800],
                        //       height: otpBoxHeight,
                        //     ),
                        //     focusNode: n3,
                        //     controller: _t4,
                        //     textAlign: TextAlign.center,
                        //     onChanged: (s) {

                        //     },
                        //     maxLength: 1,
                        //     keyboardType: TextInputType.number,
                        //     decoration: InputDecoration(
                        //         enabledBorder: UnderlineInputBorder(
                        //             borderSide: BorderSide(
                        //                 color: Colors.grey[800], width: 2))),
                        //   ),
                        // ),
                        // SizedBox(
                        //   width: MediaQuery.of(context).size.width / 9,
                        //   child: TextField(
                        //     style: TextStyle(
                        //       fontSize: medFont,
                        //       color: Colors.grey[800],
                        //       height: otpBoxHeight,
                        //     ),
                        //     focusNode: n4,
                        //     controller: _t5,
                        //     textAlign: TextAlign.center,
                        //     onChanged: (s) {

                        //     },
                        //     maxLength: 1,
                        //     keyboardType: TextInputType.number,
                        //     decoration: InputDecoration(
                        //         enabledBorder: UnderlineInputBorder(
                        //             borderSide: BorderSide(
                        //                 color: Colors.grey[800], width: 2))),
                        //   ),
                        // ),
                        // SizedBox(
                        //   width: MediaQuery.of(context).size.width / 9,
                        //   child: TextField(
                        //     style: TextStyle(
                        //       fontSize: medFont,
                        //       color: Colors.grey[800],
                        //       height: otpBoxHeight,
                        //     ),
                        //     focusNode: n5,
                        //     controller: _t6,
                        //     textAlign: TextAlign.center,
                        //     onChanged: (s) {

                        //     },
                        //     maxLength: 1,
                        //     keyboardType: TextInputType.number,
                        //     decoration: InputDecoration(
                        //         enabledBorder: UnderlineInputBorder(
                        //             borderSide: BorderSide(
                        //                 color: Colors.grey[800], width: 2))),
                        //   ),
                        // ),
                      ],
                    ),
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
                            if (_formKey.currentState.validate()) {
                              _pin = _pin + _t1.text;
                              print(_pin);

                              verifyUser v = verifyUser.start(
                                  countryCode: countryCode,
                                  number: number,
                                  otp: _pin);
                              _showDialog(_context1);
                              await v.authApicall();
                              Navigator.pop(context);
                              _isClicked = true;

                              Navigator.pushNamed(context, '/home');
                            }
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
                      if (!_isClicked) return child;
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

void _showDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          content: Container(
            height: 100,
            width: 100,
            child: SpinKitFadingFour(
              color: Colors.black12,
            ),
          ),
        );
      });
}
