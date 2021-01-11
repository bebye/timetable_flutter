import 'package:floor/floor.dart';
import 'package:timetable_flutter/database/entity/lecture.dart';
import 'package:timetable_flutter/database/entity/professor.dart';

@dao
abstract class LectureDao {

  @Query('SELECT * FROM Professor')
  Stream<List<Lecture>> getAllLecture();

  @Query('SELECT * FROM Professor WHERE id = :id')
  Stream<Lecture> getLecture(int id);

  /*@insert
  Stream<void> insertLecture(Lecture lecture);*/

}