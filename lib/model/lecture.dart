import 'package:timetable_flutter/common/extension.dart';
import 'package:timetable_flutter/model/professor.dart';
import 'package:timetable_flutter/model/student.dart';
import 'package:timetable_flutter/model/time.dart';

class Lecture {
  int id;
  String name;
  Professor professor;
  Map<Day, Time> classMap;
  String location;
  List<Student> students;
}
