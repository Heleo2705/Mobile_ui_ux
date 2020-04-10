import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BillSums.dart';
import 'Bill_Item.dart';
import 'DottedBorder.dart';

Widget BillCard(){
  return Padding(
      padding: const EdgeInsets.fromLTRB(0,0,0,0),
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'ORDER ',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w600
                  ),
                ),
                Text(
                  '#order_id ',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w600
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'DATE - ',
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 12
                  ),
                ),
                Text(
                  '_date_and_time_',
                  style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 12
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            buildDottedBorder(),
            buildBillItem('ITEM NAME','QTY','PRICE','AMOUNT'),
            buildDottedBorder(),
            buildBillItem('Name1','1','12,999','13,999'),
            buildBillItem('Name2','2','12,999','13,999'),
            buildBillItem('Name3','3','12,999','13,999'),
            buildBillItem('Name4','4','12,999','13,999'),
            SizedBox(height: 10,),
            buildDottedBorder(),
            buildBillSum('Sub Total','25,000'),
            buildBillSum('Discount','5,000'),
            buildDottedBorder(),
            buildBillSum('Total', '20,000'),

          ],
        ),
      ),
    );
}