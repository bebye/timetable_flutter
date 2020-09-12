import 'package:flutter/material.dart';
import 'package:timetable_flutter/common/style_colors.dart';
import 'package:timetable_flutter/ui/timetable/timetable.dart';
import 'package:timetable_flutter/utils/widget_util.dart';

class TimetableHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) => _buildHeader();

  Widget _buildHeader() {
    return Row(
      children: [
        _buildHeaderItem(''),
        _buildHeaderItem('MON'),
        _buildHeaderItem('TUE'),
        _buildHeaderItem('WED'),
        _buildHeaderItem('THU'),
        _buildHeaderItem('FRI'),
      ],
    );
  }

  Widget _buildHeaderItem(String text,
          {Color textColor = colorTextOnSecondary}) =>
      Container(
        width: Timetable.cellWidth,
        height: Timetable.headerHeight,
        child: Center(
          child: buildText(text, 14.0, textColor, weight: FontWeight.bold),
        ),
        decoration: addBottomBorder(
            bgColor: colorBgOnPrimary, borderColor: colorBorderPrimary),
      );
}
