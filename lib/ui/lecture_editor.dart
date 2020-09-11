import 'package:flutter/material.dart';

class LectureEditor extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LectureEditorState();
}

class _LectureEditorState extends State<LectureEditor> {

  void _complete(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Lecture'),
        actions: [
          IconButton(
              icon: Icon(Icons.check),
              iconSize: 30.0,
              padding: const EdgeInsets.fromLTRB(10.0, 0.0, 14.0, 0.0),
              onPressed: () => _complete(context))
        ],
      ),
    );
  }
}
