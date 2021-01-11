import 'package:timetable_flutter/common/strings.dart';

enum Day { mon, tue, wed, thu, fri }

extension DayExtension on Day {
  String title() {
    switch (this) {
      case Day.mon:
        return string_mon;
      case Day.tue:
        return string_tue;
      case Day.wed:
        return string_wed;
      case Day.thu:
        return string_thu;
      case Day.fri:
        return string_fri;
      default:
        return '';
    }
  }
}

enum Time { one, two, three, four, five, six, seven, eight, nine, ten, eleven }

extension TimeExtension on Time {
  String title() {
    switch (this) {
      case Time.one:
        return string_class_1;
      case Time.two:
        return string_class_2;
      case Time.three:
        return string_class_3;
      case Time.four:
        return string_class_4;
      case Time.five:
        return string_class_5;
      case Time.six:
        return string_class_6;
      case Time.seven:
        return string_class_7;
      case Time.eight:
        return string_class_8;
      case Time.nine:
        return string_class_9;
      case Time.ten:
        return string_class_10;
      case Time.eleven:
        return string_class_11;
      default:
        return '';
    }
  }

  String value() {
    switch (this) {
      case Time.one:
        return string_class_time_1;
      case Time.two:
        return string_class_time_2;
      case Time.three:
        return string_class_time_3;
      case Time.four:
        return string_class_time_4;
      case Time.five:
        return string_class_time_5;
      case Time.six:
        return string_class_time_6;
      case Time.seven:
        return string_class_time_7;
      case Time.eight:
        return string_class_time_8;
      case Time.nine:
        return string_class_time_9;
      case Time.ten:
        return string_class_time_10;
      case Time.eleven:
        return string_class_time_11;
      default:
        return '';
    }
  }
}
