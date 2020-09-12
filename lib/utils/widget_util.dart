import 'package:flutter/material.dart';
import 'package:timetable_flutter/common/style.dart';

Widget buildText(String text, double size, Color color,
        {FontWeight weight = FontWeight.normal}) =>
    Text(
      text,
      style: TextStyle(fontSize: size, color: color, fontWeight: weight),
    );

BoxDecoration addBottomBorder(double width, {Color color = primaryColor}) => BoxDecoration(
      border: Border(
          bottom: BorderSide(
        color: color,
        width: width,
      )),
    );
