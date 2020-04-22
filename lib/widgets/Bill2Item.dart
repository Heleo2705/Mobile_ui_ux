import 'package:flutter/material.dart';


//Widget billItemsBuilder(List items)
//{
//  return  Column(
//    children: items.map((item) => buildBillItem(
//      name: item['description'],
//      qty:item['quantity'],
//      price: item['sellingPrice'],
//      amount: item['amount'],
//    )
//    ).toList(),
//    mainAxisSize: MainAxisSize.min,
//  );
//}

Widget bill2ItemsGenerator(){
  String productName='Ghadi Detergent';
  String totalPrice = '20000';
  String productID = '10947298';
  String hsnCode = '368';
  String mrp = '450';
  String quantity = '100';

  return Container(

    color: Colors.grey[100],
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.all(5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              productName,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            Text(
              totalPrice,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black,
                fontSize: 16,
              ),
            )
          ],
        ),
        SizedBox(height: 5,),
        Text('SKUID : '+productID, style: TextStyle(color: Colors.black),),
        Text('HSN Code : '+hsnCode, style: TextStyle(color: Colors.black),),
        Text('MRP : Rs '+mrp+'.00', style: TextStyle(color: Colors.black),),
        Text('Quantity : '+quantity, style: TextStyle(color: Colors.black),),
      ],
    ),
  );
}