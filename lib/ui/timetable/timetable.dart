import 'package:flutter/material.dart';
import 'package:timetable_flutter/ui/timetable/timetable_content.dart';
import 'package:timetable_flutter/ui/timetable/timetable_header.dart';
import 'package:timetable_flutter/utils/device_util.dart';

class Timetable extends StatelessWidget {
  static double cellWidth;
  static double cellHeight = 80;
  static int cellSize = 6;
  static double headerHeight = 30;

  @override
  Widget build(BuildContext context) {
    cellWidth = getDeviceWidth(context) / cellSize;
    return Stack(
      children: [
        SingleChildScrollView(
          padding: EdgeInsets.only(top: headerHeight),
          child: TimetableContent(),
        ),
        TimetableHeader(),
      ],
    );
  }
}
