import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';


DottedBorder buildDottedBorder() {
  return DottedBorder(
    color: Colors.grey[400],
    padding: EdgeInsets.zero,
    dashPattern: [6, 3, 2, 3],
    child: Row(
      children: <Widget>[
        Expanded(
          child: SizedBox(
            height: 0,
          ),
        ),
      ],
    ),
  );
}