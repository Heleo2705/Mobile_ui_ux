import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobileuiux/widgets/profileItemCard.dart';
class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  double imageRadius = 50;
  String name = 'PANKAJ SINGH';
  String mobile = '9999999999';
  String email = 'temp@tempmail.com';
  String gender = 'Male';
  String city = 'Kolkata';
  String dob = '21/11/1989';
  String maritalStatus = 'Separated';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body:SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height/4,
                child: Stack(
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height/4.5,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.65), BlendMode.darken),
                            fit: BoxFit.fitWidth,
                            image: AssetImage('assets/images/avtar.png'),
                          )
                        ),
                      ),
                    ),

                    Positioned(
                      bottom: 0,
                      left: MediaQuery.of(context).size.width/2 - imageRadius,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/avtar.png'),
                        radius: imageRadius,
                      ),
                    ),
                    Positioned(
                      top: 5,
                      left: 5,
                      child: IconButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back),
                        color: Colors.white,
                        iconSize: 30,
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: 20,),
              Text(
                name,
                style: TextStyle(
                  color: Color(0xffc39a1e),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: 3,
                width: 30,
                child: Container(
                  color: Color(0xffc39a1e),
                ),
              ),
              SizedBox(height: 10,),
              profileItem(field: 'Mobile',value: '+91-'+mobile),
              profileItem(field: 'Email',value: email),
              profileItem(field: 'Gender',value: gender),
              profileItem(field: 'City',value: city),
              profileItem(field: 'Date of brith',value: dob),
              profileItem(field: 'Maritial status',value: maritalStatus),
            ],
          ),
        ),
      )
    );
  }
}
