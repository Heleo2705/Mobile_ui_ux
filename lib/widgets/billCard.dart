import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobileuiux/classes/billdata.dart';
import 'package:intl/intl.dart';
import 'BillSums.dart';
import 'Bill_Item.dart';
import 'DottedBorder.dart';
import 'package:mobileuiux/widgets/billItems.dart';


Widget billCard(BillsData bill){

  var orderId = bill.billInfo['billNumber'];
  var dateAndTime = DateTime.parse(bill.billInfo['purchaseDate']+' '+bill.billInfo['purchaseTime']);
  var displayDateTime = DateFormat("d MMM, ''yy, h:mm:ss a").format(dateAndTime);
  var items = bill.item;
  var subTotal = bill.subTotal;
  String discount = bill.billDiscount['amount'];
  var total = bill.subTotal;

  return Container(
    color: Colors.white,
    padding: EdgeInsets.all(15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
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
              orderId+' ',
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
              displayDateTime,      ///Ho SAKTA HAI YAHA PE PROBLEM HO//////////////////////////////////
              style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 12
              ),
            )
          ],
        ),
        SizedBox(height: 20,),
        buildDottedBorder(),
        buildBillItem(name:'ITEM NAME',qty:'QTY',price:'PRICE',amount:'AMOUNT'),
        buildDottedBorder(),
        billItemsBuilder(items),
        SizedBox(height: 10,),
        buildDottedBorder(),
        buildBillSum(
          metric: 'Sub Total',
          value: subTotal,
        ),
        buildBillSum(
          metric:'Discount',
          value:discount,
        ),
        buildDottedBorder(),
        buildBillSum(
          metric: 'Total',
          value: total,
        ),

      ],
    ),
  );
}