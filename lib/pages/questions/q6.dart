import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:mobileuiux/pages/questions/q7.dart';

class Q6 extends StatefulWidget {
  @override
  _Q6State createState() => _Q6State();
}

class _Q6State extends State<Q6> {
  bool tapped1 = false;
  bool tapped2 = false;
  bool tapped3 = false;
  bool tapped4 = false;
  bool tapped5 = false;
  bool tapped6 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.centerLeft,
                  child: FloatingActionButton(
                    onPressed: ()=>Navigator.of(context).pop(),
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            'What\'s your housefold income(in Lacs)?',
                            textAlign: TextAlign.center,
                            softWrap: true,
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 25,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        SizedBox(
                          width: 350,
                          child: FlatButton(
                            padding: EdgeInsets.all(10),
                            color: tapped1? Color(0xffe1f4f3):Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                                side: BorderSide(
                                    color: Colors.black,
                                    width: 2
                                )
                            ),
                            child: Text(
                              '1-3 Lacs',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                              ),
                            ),
                            onPressed: (){
                              setState(() {
                                tapped1 = true;
                                tapped2 = false;
                                tapped3 = false;
                                tapped4 = false;
                                tapped5 = false;
                                tapped6 = false;
                              });
                              Navigator.of(context).push(_createRoute());
                            },
                          ),
                        ),
                        SizedBox(height: 5,),
                        SizedBox(
                          width: 350,
                          child: FlatButton(
                            padding: EdgeInsets.all(10),
                            color: tapped2? Color(0xffe1f4f3):Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                                side: BorderSide(
                                    color: Colors.black,
                                    width: 2
                                )
                            ),
                            child: Text(
                              '3-5 Lacs',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                              ),
                            ),
                            onPressed: (){
                              setState(() {
                                tapped1 = false;
                                tapped2 = true;
                                tapped3 = false;
                                tapped4 = false;
                                tapped5 = false;
                                tapped6 = false;
                              });
                              Navigator.of(context).push(_createRoute());
                            },
                          ),
                        ),
                        SizedBox(height: 5,),
                        SizedBox(
                          width: 350,
                          child: FlatButton(
                            padding: EdgeInsets.all(10),
                            color: tapped3? Color(0xffe1f4f3):Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                                side: BorderSide(
                                    color: Colors.black,
                                    width: 2
                                )
                            ),
                            child: Text(
                              '5-10 Lacs',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                              ),
                            ),
                            onPressed: (){
                              setState(() {
                                tapped1 = false;
                                tapped2 = false;
                                tapped3 = true;
                                tapped4 = false;
                                tapped5 = false;
                                tapped6 = false;
                              });
                              Navigator.of(context).push(_createRoute());
                            },
                          ),
                        ),
                        SizedBox(height: 5,),
                        SizedBox(
                          width: 350,
                          child: FlatButton(
                            padding: EdgeInsets.all(10),
                            color: tapped4? Color(0xffe1f4f3):Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                                side: BorderSide(
                                    color: Colors.black,
                                    width: 2
                                )
                            ),
                            child: Text(
                              '10-15 Lacs',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                              ),
                            ),
                            onPressed: (){
                              setState(() {
                                tapped1 = false;
                                tapped2 = false;
                                tapped3 = false;
                                tapped4 = true;
                                tapped5 = false;
                                tapped6 = false;
                              });
                              Navigator.of(context).push(_createRoute());
                            },
                          ),
                        ),
                        SizedBox(height: 5,),
                        SizedBox(
                          width: 350,
                          child: FlatButton(
                            padding: EdgeInsets.all(10),
                            color: tapped5? Color(0xffe1f4f3):Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                                side: BorderSide(
                                    color: Colors.black,
                                    width: 2
                                )
                            ),
                            child: Text(
                              '15 Lacs and Above',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                              ),
                            ),
                            onPressed: (){
                              setState(() {
                                tapped1 = false;
                                tapped2 = false;
                                tapped3 = false;
                                tapped4 = false;
                                tapped5 = true;
                                tapped6 = false;
                              });
                              Navigator.of(context).push(_createRoute());
                            },
                          ),
                        ),
                        SizedBox(height: 5,),
                        SizedBox(
                          width: 350,
                          child: FlatButton(
                            padding: EdgeInsets.all(10),
                            color: tapped6? Color(0xffe1f4f3):Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                                side: BorderSide(
                                    color: Colors.black,
                                    width: 2
                                )
                            ),
                            child: Text(
                              'Skip',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                              ),
                            ),
                            onPressed: (){
                              setState(() {
                                setState(() {
                                  tapped1 = false;
                                  tapped2 = false;
                                  tapped3 = false;
                                  tapped4 = false;
                                  tapped5 = false;
                                  tapped6 = true;
                                });
                                Navigator.of(context).push(_createRoute());
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new DotsIndicator(
                          dotsCount: 7,
                          position: 5,
                          decorator: DotsDecorator(
                            color: Color(0xffe1f4f3),
                            activeColor: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 350,
                          child: FlatButton(
                            padding: EdgeInsets.all(10),
                            color: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Text(
                              'CONTINUE',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                            onPressed: (){
                              Navigator.of(context).push(_createRoute());
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Q7(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(1.0, 0.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween = Tween(begin: begin, end: end);
        var curvedAnimation = CurvedAnimation(
          parent: animation,
          curve: curve,
        );

        return SlideTransition(
          position: tween.animate(curvedAnimation),
          child: child,
        );
      }
  );
}