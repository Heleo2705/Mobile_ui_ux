import 'package:flutter/material.dart';



Widget ratingButton({int i,Color color}){
  return InkWell(
    onTap: (){},
    child: Container(
      height: 28,
      width: 28,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          i.toString(),
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    ),
  );
}


