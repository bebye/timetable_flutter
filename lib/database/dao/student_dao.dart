import 'package:floor/floor.dart';
import 'package:timetable_flutter/database/entity/professor.dart';
import 'package:timetable_flutter/database/entity/student.dart';

@dao
abstract class StudentDao {

  @Query('SELECT * FROM Professor')
  Stream<List<Student>> getAllStudent();

  @Query('SELECT * FROM Professor WHERE id = :id')
  Stream<Student> getStudent(int id);

  /*@insert
  Stream<void> insertStudent(Student student);*/

}