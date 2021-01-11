import 'package:flutter/material.dart';
import 'package:timetable_flutter/common/style/style_text.dart';
import 'package:timetable_flutter/common/timetable_extension.dart';
import 'package:timetable_flutter/ui/timetable/timetable.dart';
import 'package:timetable_flutter/utils/widget_util.dart';

class TimetableContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) => _buildContent();

  Widget _buildContent() {
    return ListBody(
      children: _getContentRows(),
    );
  }

  List<Row> _getContentRows() {
    List<Row> rows = List<Row>();
    for (Time time in Time.values) {
      rows.add(_buildRow('${time.title()}', '${time.value()}'));
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
            buildText(title, textNormal14),
            buildText(description, textNormal12),
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
