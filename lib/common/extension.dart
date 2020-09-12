enum Day { mon, tue, wed, thu, fri }

extension DayExtension on Day {
  String title() {
    switch (this) {
      case Day.mon:
        return 'MON';
      case Day.tue:
        return 'TUE';
      case Day.wed:
        return 'WED';
      case Day.thu:
        return 'THU';
      case Day.fri:
        return 'FRI';
      default:
        return '';
    }
  }
}
