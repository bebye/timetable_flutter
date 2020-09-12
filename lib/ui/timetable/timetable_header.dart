import 'package:flutter/material.dart';
import 'package:timetable_flutter/common/extension.dart';
import 'package:timetable_flutter/common/style/style_colors.dart';
import 'package:timetable_flutter/common/style/style_text.dart';
import 'package:timetable_flutter/ui/timetable/timetable.dart';
import 'package:timetable_flutter/utils/widget_util.dart';

class TimetableHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) => _buildHeader();

  Widget _buildHeader() {
    return Row(
      children: [
        _buildHeaderItem(''),
        _buildHeaderItem(Day.mon.title()),
        _buildHeaderItem(Day.tue.title()),
        _buildHeaderItem(Day.wed.title()),
        _buildHeaderItem(Day.thu.title()),
        _buildHeaderItem(Day.fri.title()),
      ],
    );
  }

  Widget _buildHeaderItem(String text,
          {Color textColor = colorTextOnSecondary}) =>
      Container(
        width: Timetable.cellWidth,
        height: Timetable.headerHeight,
        child: Center(
          child: buildText(text, textBold14),
        ),
        decoration: addBottomBorder(
            bgColor: colorBgOnPrimary, borderColor: colorBorderPrimary),
      );
}
