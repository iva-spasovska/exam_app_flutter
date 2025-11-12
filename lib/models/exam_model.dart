class Exam {
  String name;
  DateTime dateTime;
  List<String> rooms;

  Exam({
    required this.name,
    required this.dateTime,
    required this.rooms,
  });

  bool get isPast => dateTime.isBefore(DateTime.now());

  String get timeLeft {
    final now = DateTime.now();
    final difference = dateTime.difference(now);

    if (difference.isNegative) {
      return 'Испитот е завршен';
    } else {
      final days = difference.inDays;
      final hours = difference.inHours % 24;

      if (days == 0) {
        return '$hours часа';
      }

      final dayLabel = days == 1 ? 'ден' : 'дена';
      return '$days $dayLabel, $hours часа';
    }
  }


}