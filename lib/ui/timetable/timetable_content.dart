import 'package:flutter/material.dart';
import 'package:timetable_flutter/common/style_colors.dart';
import 'package:timetable_flutter/ui/timetable/timetable.dart';
import 'package:timetable_flutter/utils/widget_util.dart';

class TimetableContent extends StatelessWidget {
  final timeListSize = 11;

  @override
  Widget build(BuildContext context) => _buildContent();

  Widget _buildContent() {
    return ListBody(
      children: _getContentRows(),
    );
  }

  List<Row> _getContentRows() {
    List<Row> rows = List<Row>();
    var time = 9;
    for (int i = 0; i < timeListSize; i++) {
      rows.add(_buildRow('Class${i + 1}', '$time - ${++time}'));
    }
    return rows;
  }

  Row _buildRow(String title, String description) => Row(
        children: [_getTimeCell(title, description), ..._getContentCells()],
      );

  Widget _getTimeCell(String title, String description) => Container(
        width: Timetable.cellWidth,
        height: Timetable.cellHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildText(title, 14.0, colorTextOnSecondary),
            buildText(description, 12.0, colorTextSubOnSecondary),
          ],
        ),
        decoration: addBottomBorder(),
      );

  List<Widget> _getContentCells() {
    List<Widget> cells = List<Widget>();
    for (int i = 0; i < Timetable.cellSize - 1; i++) {
      cells.add(_buildTableCell());
    }
    return cells;
  }

  Widget _buildTableCell() => Container(
        width: Timetable.cellWidth,
        height: Timetable.cellHeight,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border(left: buildBorderSide(), bottom: buildBorderSide()),
        ),
      );
}
