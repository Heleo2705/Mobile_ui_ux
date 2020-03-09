import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:mobileuiux/pages/questions/q4.dart';


class Q3 extends StatefulWidget {
  @override
  _Q3State createState() => _Q3State();
}

class _Q3State extends State<Q3> {
  String dropdownValue ;
  List<String> values = ['Delhi','Mumbai','Chennai','Bangalore','Raipur'];

  @override
  void initState() {

    super.initState();
    dropdownValue = values.elementAt(0);
  }
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
                            'Choose your city',
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
                          decoration: BoxDecoration(
                            border: Border.all(width: 2),
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: Theme(
                            data: ThemeData(
                              brightness: Brightness.light,
                              primaryColor: Colors.black,
                              accentColor: Colors.black,
                            ),
                            child: DropdownButton<String>(
                              value: dropdownValue,
                              icon: Icon(
                                Icons.arrow_forward,
                                color: Colors.black,
                                size: 20,
                              ),
                              iconSize: 24,
                              elevation: 16,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,

                              ),
                              underline: Container(
                                color: Colors.transparent,
                              ),
                              isDense: true,
                              onChanged: (String newValue) {
                                setState(() {
                                  dropdownValue = newValue;
                                });
                              },

                              items: values.map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
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
