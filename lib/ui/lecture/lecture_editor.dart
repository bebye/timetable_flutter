import 'package:flutter/material.dart';
import 'package:timetable_flutter/common/timetable_extension.dart';
import 'package:timetable_flutter/common/strings.dart';
import 'package:timetable_flutter/common/style/style_colors.dart';
import 'package:timetable_flutter/utils/widget_util.dart';

class LectureEditor extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LectureEditorState();
}

class _LectureEditorState extends State<LectureEditor> {

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
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildLectureName(),
            _buildLectureProfessor(),
            _buildLectureLocation(),
          ],
        ),
      ),
    );
  }

  void _complete() {
    Navigator.pop(context);
  }

  TextFormField _buildLectureName() => buildTextFormField(
          20,
          const InputDecoration(
              icon: Icon(Icons.book),
              labelText: string_lecture_name + string_lecture_required_value,
              hintText: string_lecture_name_hint), (value) {
        return _validateLectureName(value);
      });

  TextFormField _buildLectureProfessor() => buildTextFormField(
          20,
          const InputDecoration(
              icon: Icon(Icons.person),
              labelText:
                  string_lecture_professor + string_lecture_required_value,
              hintText: string_lecture_professor_hint), (value) {
        return _validateLectureProfessor(value);
      });

  DropdownButton _buildLectureDate() => DropdownButton<String>(
        value: Day.mon.title(),
        icon: Icon(Icons.arrow_drop_down),
        iconSize: 24,
        elevation: 15,
        underline: Container(
          height: 2,
          color: colorPrimary,
        ),
        onChanged: (String newValue) {
          setState(() {

          });
        },
        items: <String>['One', 'Two', 'Free', 'Four']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      );

  TextFormField _buildLectureLocation() => buildTextFormField(
          20,
          const InputDecoration(
              icon: Icon(Icons.location_on),
              labelText: string_lecture_location,
              hintText: string_lecture_location_hint), (value) {
        return null;
      });

  String _validateLectureName(String value) {
    return (value == null || value.trim().length == 0)
        ? string_lecture_name_validation
        : null;
  }

  String _validateLectureProfessor(String value) {
    return (value == null || value.trim().length == 0)
        ? string_lecture_professor_validation
        : null;
  }
}
