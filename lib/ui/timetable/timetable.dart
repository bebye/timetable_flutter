import 'package:flutter/material.dart';
import 'package:timetable_flutter/ui/timetable/timetable_header.dart';

class Timetable extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TimetableState();
}

class _TimetableState extends State<Timetable> {
  @override
  Widget build(BuildContext context) {
    return TimetableHeader();
  }
}
