import 'package:flutter/material.dart';

Container buildBillItem(String name, String qty, String price, String amount) {
  return Container(
    padding: EdgeInsets.all(10),
    child: Row(
      children: <Widget>[
        Expanded(
          flex: 7,
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              name,
              style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 12
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            alignment: Alignment.center,
            child: Text(
              qty,
              style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 12
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            alignment: Alignment.center,
            child: Text(
              price,
              style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 12
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            alignment: Alignment.center,
            child: Text(
              amount,
              style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 12
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
