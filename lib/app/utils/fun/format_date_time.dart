dflj() {
  String s = '000';
  s.toString();
}

extension FormatTimeDate on DateTime {
  String toDate() {
    return '$day/$month/$year';
  }

  String toTime() {
    return '$hour:$minute:$second';
  }

   String toDateAndTimeS() {
    return '$year/$month/$day-$hour:$minute:$second';
  }

  String toDateAndTime() {
    return '$year/$month/$day-$hour:$minute';
  }
}
