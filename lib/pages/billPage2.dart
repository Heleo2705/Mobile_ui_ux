import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobileuiux/widgets/ratingButton.dart';
import 'package:mobileuiux/widgets/Bill2Item.dart';
import 'package:mobileuiux/widgets/BoxDecoration1.dart';
import 'package:intl/intl.dart';
import 'package:mobileuiux/widgets/UpgradeMiniWidget.dart';
import 'package:mobileuiux/widgets/SocialMediaPage.dart';
import 'package:mobileuiux/widgets/expansionTile.dart';

class BillPage2 extends StatefulWidget {
  @override
  _BillPage2State createState() => _BillPage2State();
}

class _BillPage2State extends State<BillPage2> {

  String companyName = 'Mc Donalds';
  String city = 'Kolkata';
  String total = '23200';
  String checkoutOTP = '827689';
  String invoiceNo = "21424123123";
  static DateTime dateAndTime = DateTime.parse("20191218"+' '+"073559",);
  var displayDateTime = DateFormat("d MMM, ''yy, h:mm:ss a").format(dateAndTime);
  var subTotal = '34092';
  var discount = '4323';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          FlatButton(
            onPressed: (){},
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Download',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.black
                  ),
                ),
                Icon(
                  Icons.file_download,
                  color: Colors.black,
                )
              ],
            ),
          )
        ],
      ),

      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.white,
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                  leading: Image(image: AssetImage('assets/images/mcd.png'),),
                  title: Text('  '+companyName,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.location_on,color: Colors.black,size: 10,),
                      Text(' '+city,style: TextStyle(color: Colors.black),)
                    ],
                  ),
                  trailing: Text('₹ '+total,style: TextStyle(color: Colors.black),),
                ),
              ),


              Container(
                padding: EdgeInsets.all(20),
                child: Center(
                  child: Text(
                    'CHECKOUT OTP : '+checkoutOTP,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                    ),
                  ),
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width-10,
                padding: EdgeInsets.fromLTRB(0,40,0,40),
                decoration: box1(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Please rate your experience with '+companyName,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ratingButton(i: 1,color: Color.fromRGBO(255,51,0,1)),
                        ratingButton(i: 2,color: Color.fromRGBO(255,102,0,1)),
                        ratingButton(i: 3,color: Color.fromRGBO(255,153,0,1)),
                        ratingButton(i: 4,color: Color.fromRGBO(255,204,0,1)),
                        ratingButton(i: 5,color: Color.fromRGBO(255,255,0,1)),
                        ratingButton(i: 6,color: Color.fromRGBO(204,255,0,1)),
                        ratingButton(i: 7,color: Color.fromRGBO(153,255,0,1)),
                        ratingButton(i: 8,color: Color.fromRGBO(102,255,0,1)),
                        ratingButton(i: 9,color: Color.fromRGBO(51,255,0,1)),
                        ratingButton(i: 10,color: Color.fromRGBO(0,255,0,1)),

                      ],
                    )
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.all(5),
                decoration: box1(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "INVOICE NO. "+invoiceNo,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "DATE -  "+displayDateTime,
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 14,
                        ),
                      ),
                    ),

                    bill2ItemsGenerator(),///See implementation for changing ui
                    bill2ItemsGenerator(),///See implementation for changing ui

                    Container(
                      padding: EdgeInsets.only(left: 15,right: 15,top: 15,bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Sub Total',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[800],
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            subTotal,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[800],
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Discount ",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[800],
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            discount,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[800],
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.only(left: 15,right: 15,top: 20,bottom: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Total ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            total,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              upgradeMiniWidget(),

              socialMediaSharing(name: 'Ghadi',fbUrl: '',instagramUrl: '',twitterUrl: ''),

              expansionTile(title: 'Terms and Conditions', display: 'Lorem epsom'),

              expansionTile(title: 'Exachange policy', display: 'Lorem epsom'),

              SizedBox(height: 100,),
            ],
          ),
        ),
      ),
    );
  }
}
