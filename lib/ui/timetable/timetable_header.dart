import 'package:flutter/material.dart';
import 'package:timetable_flutter/common/style.dart';
import 'package:timetable_flutter/utils/widget_util.dart';

class TimetableHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) => buildHeader();

  Widget buildHeader() {
    return GridView.count(
      crossAxisCount: 6,
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

  Widget _buildHeaderItem(String text, {Color textColor = primaryColor}) =>
      Container(
        child: buildText(text, 18.0, textColor, weight: FontWeight.bold),
        alignment: Alignment.center,
        decoration: addBottomBorder(1.0),
      );
}
