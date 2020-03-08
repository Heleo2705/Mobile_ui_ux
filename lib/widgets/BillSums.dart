import 'package:flutter/material.dart';

Container buildBillSum(String metric, String value) {
  return Container(
    padding: EdgeInsets.all(15),
    child: Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              metric,
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
            alignment: Alignment.centerRight,
            child: Text(
              value,
              style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 12
              ),
            ),
          ),
        )
      ],
    ),
  );
}
