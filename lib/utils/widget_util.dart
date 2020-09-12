import 'package:flutter/material.dart';
import 'package:timetable_flutter/common/style_colors.dart';

Widget buildText(String text, double size, Color color,
        {TextAlign align = TextAlign.center,
        FontWeight weight = FontWeight.normal}) =>
    Text(
      text,
      textAlign: align,
      style: TextStyle(fontSize: size, color: color, fontWeight: weight),
    );

BoxDecoration addBottomBorder(
        {double width = 1.0,
        Color bgColor = Colors.transparent,
        Color borderColor = colorBorderSecondary}) =>
    BoxDecoration(
      color: bgColor,
      border: Border(
          bottom: buildBorderSide(width: width, borderColor: borderColor)),
    );

BorderSide buildBorderSide(
        {double width = 1.0, Color borderColor = colorBorderSecondary}) =>
    BorderSide(
      color: borderColor,
      width: width,
    );
