import 'package:flutter/material.dart';
import 'package:timetable_flutter/common/style/style_colors.dart';

Widget buildText(String text, TextStyle style,
        {TextAlign align = TextAlign.center}) =>
    Text(text, textAlign: align, style: style);

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
    BorderSide(color: borderColor, width: width);
