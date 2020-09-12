import 'package:timetable_flutter/common/strings.dart';

enum Day { mon, tue, wed, thu, fri }

extension DayExtension on Day {
  String title() {
    switch (this) {
      case Day.mon:
        return '$string_mon';
      case Day.tue:
        return '$string_tue';
      case Day.wed:
        return '$string_wed';
      case Day.thu:
        return '$string_thu';
      case Day.fri:
        return '$string_fri';
      default:
        return '';
    }
  }
}
