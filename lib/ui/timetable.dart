import 'package:flutter/material.dart';
import 'package:timetable_flutter/common/style.dart';

class Timetable extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TimetableState();
}

class _TimetableState extends State<Timetable> {
  @override
  Widget build(BuildContext context) {
    return _buildHeader();
  }

  Widget _buildHeader() {
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
        child: _buildText(text, 18.0, textColor, weight: FontWeight.bold),
        alignment: Alignment.center,
        decoration: _addBottomBorder(),
      );

  Widget _buildText(String text, double size, Color color,
          {FontWeight weight = FontWeight.normal}) =>
      Text(
        text,
        style: TextStyle(fontSize: size, color: color, fontWeight: weight),
      );

  BoxDecoration _addBottomBorder({Color color = primaryColor}) => BoxDecoration(
        border: Border(
            bottom: BorderSide(
          color: color,
          width: 1.0,
        )),
      );
}
