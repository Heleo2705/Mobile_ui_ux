import 'package:flutter/material.dart';
import 'package:mobileuiux/classes/billdata.dart';

Widget Card2(BillsData bill){

  String logo = bill.store['brand']['logo'];
  if(logo==null) logo = "https://logosvector.net/wp-content/themes/iLoveLogos/img/not-available.jpg";
  String name = bill.store['displayName'];
  if(name==null) name="Not Available";
  String loca = bill.store['displayAddress']['city'];
  if(loca==null) loca = 'Not Available';
  String total = bill.subTotal;

  return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        constraints: BoxConstraints(
            maxHeight: 80.0,
        ),
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Image(
                  image: NetworkImage(logo),
                  height: 90,
                  width: 90,
                ),
              ),
              Expanded(
                flex: 7,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15.0,0,0,0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        name,
                        style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 22
                        ),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: Colors.black54,
                            size: 12,
                          ),
                          Text(
                            loca,
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            topLeft: Radius.circular(15),
                          )
                      ),
                      child: Text(
                        'FOOD & DRINKS',
                        style: TextStyle(
                            fontSize: 10
                        ),
                      ),
                      padding: EdgeInsets.fromLTRB(30, 5, 15, 5),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '₹ '+total,
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                          SizedBox(width: 20,)
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),

      ),
    );
}