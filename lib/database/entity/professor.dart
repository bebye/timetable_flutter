import 'package:floor/floor.dart';

@entity
class Professor {
  @primaryKey
  int id;
  @ColumnInfo(nullable: false)
  String name;
}
