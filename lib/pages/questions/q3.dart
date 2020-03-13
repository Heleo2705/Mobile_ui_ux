import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:mobileuiux/pages/questions/q4.dart';
//import 'package:flutter_google_places/flutter_google_places.dart';

class Q3 extends StatefulWidget {
  @override
  _Q3State createState() => _Q3State();
}

class _Q3State extends State<Q3> {
  String stringValue ;
  TextEditingController controller = TextEditingController();
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
                            'CITY',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 25,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          padding: EdgeInsets.fromLTRB(50,10,50,10),

                          child: Theme(
                            data: ThemeData(
                              brightness: Brightness.light,
                              primaryColor: Colors.black,
                              accentColor: Colors.black,
                            ),
                            child: Container(
                              child: TextField(
                                decoration: InputDecoration(

                                  hintText: 'Enter your city',
                                ),
                                controller: controller,
                                onChanged: (text){
                                  controller.text = text;
                                  controller.selection = TextSelection.collapsed(offset: controller.text.length);
                                },
                              ),
                            )
                          ),
                        )
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
                          position: 2,
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
      pageBuilder: (context, animation, secondaryAnimation) => Q4(),
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
