import 'package:flutter/material.dart';
import 'package:mobileuiux/classes/billdata.dart';

Widget card1(
    {@required BuildContext context,
    BillsData billData,
    String productId,
    String purchaseDate,
    String displayName,
    String logo,
    String subTotal,
    String displayCity}) {
  if (productId == null) productId = "Cant find";
  if (purchaseDate == null) purchaseDate = "Can't find";
  if (displayName == null) displayName = "Can't find";
  if (logo == null)
    logo =
        "https://logosvector.net/wp-content/themes/iLoveLogos/img/not-available.jpg";
  if (subTotal == null) subTotal = "0";
  if (displayCity == null) displayCity = "Can't find";
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      constraints: BoxConstraints(
        maxHeight: 120.0,
      ),
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        productId,
                        style: TextStyle(color: Colors.black54, fontSize: 13),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        purchaseDate[6] +
                            purchaseDate[7] +
                            " - " +
                            purchaseDate[4] +
                            purchaseDate[5] +
                            " - " +
                            purchaseDate[0] +
                            purchaseDate[1] +
                            purchaseDate[2] +
                            purchaseDate[3],
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 13,
                        ),
                      )
                    ],
                  )),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
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
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
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
                    padding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          displayName,
                          style:
                              TextStyle(color: Colors.grey[900], fontSize: 18),
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
                              size: 12,
                            ),
                            Text(
                              displayCity,
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
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
