import 'package:floor/floor.dart';
import 'package:timetable_flutter/database/entity/professor.dart';

@dao
abstract class ProfessorDao {

  @Query('SELECT * FROM Professor')
  Stream<List<Professor>> getAllProfessor();

  @Query('SELECT * FROM Professor WHERE id = :id')
  Stream<Professor> getProfessor(int id);

  /*@insert
  Stream<void> insertProfessor(Professor professor);*/

}