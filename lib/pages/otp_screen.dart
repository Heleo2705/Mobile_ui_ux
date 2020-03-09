import 'package:flutter/material.dart';

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
          size: 30
        ),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              //Intro text
              SizedBox(height: 50,),
              Text(
                'Verify Mobile Number',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 4,
                width: 60,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 4,
                      color: Colors.black
                    )
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'We have sent a 4 digit varification code on\n',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 13
                  ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    '+91-9019112231 ',
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 13
                    ),
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
                  SizedBox(
                    width: 50,
                  ),
                  SizedBox(
                    width: 50,
                    child: TextField(
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.grey[800],
                        height: 2,
                      ),
                      controller: TextEditingController(),
                      onSubmitted: (String s){},
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey[800],
                                  width: 2
                              )
                          )
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    child: TextField(
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.grey[800],
                        height: 2,
                      ),
                      controller: TextEditingController(),
                      onSubmitted: (String s){},
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey[800],
                                  width: 2
                              )
                          )
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    child: TextField(
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.grey[800],
                        height: 2,
                      ),
                      controller: TextEditingController(),
                      onSubmitted: (String s){},
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey[800],
                                  width: 2
                              )
                          )
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    child: TextField(
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.grey[800],
                        height: 2,
                      ),
                      controller: TextEditingController(),
                      onSubmitted: (String s){},
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey[800],
                                  width: 2
                              )
                          )
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
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
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, '/q1');
                    },
                    textColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 1
                    ),
                    padding: EdgeInsets.all(15),
                    child: Text(
                      'CONTINUE',
                      style: TextStyle(
                        fontSize: 20
                      ),
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
                style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 13
                ),
              ),
              GestureDetector(
                onTap: (){},
                child: Text(
                  'Resend Code \n',
                  style: TextStyle(
                    color: Colors.cyan[600],
                    fontSize: 16,
                    decoration: TextDecoration.underline
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
