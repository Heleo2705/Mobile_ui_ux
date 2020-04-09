import 'package:flutter/material.dart';

Widget card1({@required BuildContext context, String productId, String purchaseDate, String displayName, String logo, String subTotal, String displayCity}) {
  if (productId == null) productId = "Cant find";
  if (purchaseDate == null) purchaseDate = "Can't find";
  if (displayName == null) displayName = "Can't find";
  if (logo == null) logo = "https://logosvector.net/wp-content/themes/iLoveLogos/img/not-available.jpg";
  if (subTotal == null) subTotal = "0";
  if(displayCity == null) displayCity = "Can't find";

  var maxHeight = 150.0;
  var smallFont = 12.0;
  var imgHeightWidth = 90.0;
  var titleSize = 18.0;

  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      constraints: BoxConstraints(
        maxHeight: maxHeight,
      ),
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        productId,
                        style: TextStyle(color: Colors.black54, fontSize: smallFont),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        purchaseDate[6]+purchaseDate[7]+" - "+purchaseDate[4]+purchaseDate[5]+" - "+purchaseDate[0]+purchaseDate[1]+purchaseDate[2]+purchaseDate[3],
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: smallFont,
                        ),
                      )
                    ],
                  )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            topLeft: Radius.circular(15),
                          )),
                      child: Text(
                        'FOOD & DRINKS',
                        style: TextStyle(fontSize: 10),
                      ),
                      padding: EdgeInsets.fromLTRB(30, 5, 15, 5),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Image(
                      image: NetworkImage(logo),
                      height: imgHeightWidth,
                      width: imgHeightWidth,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            displayName,
                            style:
                            TextStyle(color: Colors.grey[900], fontSize: titleSize),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Icon(
                                Icons.location_on,
                                color: Colors.black54,
                                size: smallFont,
                              ),
                              Text(
                                displayCity,
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: smallFont,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            subTotal,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/billPage');
                      },
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'VIEW RECEIPT',
                              style: TextStyle(
                                fontSize: smallFont,
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
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
