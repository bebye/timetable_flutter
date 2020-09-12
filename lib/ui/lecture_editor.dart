import 'package:flutter/material.dart';
import 'package:timetable_flutter/common/strings.dart';
import 'package:timetable_flutter/utils/widget_util.dart';

class LectureEditor extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LectureEditorState();
}

class _LectureEditorState extends State<LectureEditor> {
  void _complete() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(string_title_lecture),
        actions: [
          buildIconButton(
              Icon(Icons.check), string_tooltip_complete, _complete),
        ],
      ),
    );
  }
}
