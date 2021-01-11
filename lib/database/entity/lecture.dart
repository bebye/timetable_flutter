import 'package:floor/floor.dart';
import 'package:timetable_flutter/database/entity/professor.dart';

@Entity(foreignKeys: [
  ForeignKey(
      childColumns: ['professor_id'], parentColumns: ['id'], entity: Professor)
])
class Lecture {
  @primaryKey
  int id;
  @ColumnInfo(nullable: false)
  String name;
  @ColumnInfo(name: 'professor_id', nullable: false)
  int professorId;
  @ColumnInfo(nullable: false)
  String timetable;
  String location;
}

/*
class Lecture {
  @primaryKey
  int id;
  String name;
  Professor professor;
  Map<Day, Time> classMap;
  String location;
  List<Student> students;
}*/
