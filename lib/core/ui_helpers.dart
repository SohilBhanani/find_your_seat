import 'package:flutter/material.dart';

//! Screen Size
//* Screen Width
double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
//* Screen Height
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

//!InputBorder
OutlineInputBorder myBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(6),
  borderSide: BorderSide(
    color: Colors.blue[100]!,
    width: 2,
  ),
);

//space
SizedBox vertSpace15 = SizedBox(height: 15);
SizedBox vertSpace5 = SizedBox(height: 5);
SizedBox vertSpace1 = SizedBox(height: 1);
