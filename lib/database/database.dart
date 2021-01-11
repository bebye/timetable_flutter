import 'dart:async';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import 'package:timetable_flutter/database/dao/lecture_dao.dart';
import 'package:timetable_flutter/database/dao/professor_dao.dart';
import 'package:timetable_flutter/database/dao/student_dao.dart';
import 'package:timetable_flutter/database/entity/lecture.dart';
import 'package:timetable_flutter/database/entity/professor.dart';
import 'package:timetable_flutter/database/entity/student.dart';

part 'database.g.dart';

@Database(version: 1, entities: [Lecture, Student, Professor])
abstract class AppDatabase extends FloorDatabase {
  LectureDao get lectureDao;

  ProfessorDao get professorDao;

  StudentDao get studentDao;
}
