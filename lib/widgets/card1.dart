import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Card1 extends StatefulWidget {
  @override
  _CardState createState() => _CardState();
}

class _CardState extends State<Card1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 18,),
                    Text(
                      '#prodct_id',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 13
                      ),
                    ),
                    SizedBox(width: 20,),
                    Text(
                      'Date',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 13,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      child: Container(
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
                    ),
                  ),
                ),
              ),
            ],
          ),
          ListTile(
            leading: Image(
              image: AssetImage('assets/images/mcd.png'),
              height: 80,
              width:  60,
              fit: BoxFit.fill,
            ),
            title: Text(
              'McDonalds',
              style: TextStyle(
                color: Colors.grey[900],
                fontSize: 25
              ),
            ),
            subtitle: Row(
              children: <Widget>[
                Icon(
                  Icons.location_on,
                  color: Colors.black54,
                  size: 12,
                ),
                Text(
                  'Phoenix Marketcity',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 12,
                  ),
                )
              ],
            ),
            trailing: SizedBox(
              width: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(width: 40,),
                        Text(
                          '@ 20000',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8,),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/billPage');
                    },
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'VIEW RECEIPT',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[700],
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 12,
                            color: Colors.grey[700],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

          )
        ],
      ),
    );
  }
}
