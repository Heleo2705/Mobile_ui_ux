import 'package:flutter/material.dart';
import 'package:mobileuiux/widgets/Bill_Item.dart';


Widget billItemsBuilder(List items)
{
  return  Column(
    children: items.map((item) => buildBillItem(
      name: item['description'],
      qty:item['quantity'],
      price: item['sellingPrice'],
      amount: item['amount'],
      )
    ).toList(),
    mainAxisSize: MainAxisSize.min,
  );
}
