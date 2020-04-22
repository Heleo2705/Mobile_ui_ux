import 'package:flutter/material.dart';


Widget profileItem({String field, String value}){
  return Padding(
    padding: const EdgeInsets.fromLTRB(10,0,10,0),
    child: ListTile(

      title: Text(
        field,
        style: TextStyle(
          fontSize: 12,
          color: Colors.grey[700],
        ),
      ),

      subtitle: Text(
        value,
        style: TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: IconButton(
        onPressed: (){},
        icon: Icon(
          Icons.edit,
          color: Colors.grey,
        ),
      ),
    ),
  );
}
