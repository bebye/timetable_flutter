import 'package:floor/floor.dart';

@entity
class Student {
  @primaryKey
  int id;
  @ColumnInfo(nullable: false)
  String name;
}
