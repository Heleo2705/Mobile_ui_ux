import 'package:flutter/material.dart';
import 'package:mobileuiux/widgets/BoxDecoration1.dart';

Widget expansionTile({String display, String title}){
  return Container(
    decoration: box1(),
    child: ExpansionTile(
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Text(
              display,
              style: TextStyle(color: Colors.black),
            ),
          ),
        )
      ],
      trailing: Icon(Icons.arrow_drop_down,color: Colors.black,),
    ),
  );
}