const _monthNames = <String>[
  "January",
  "February",
  "March",
  "April",
  "May",
  "June",
  "July",
  "August",
  "September",
  "October",
  "November",
  "December"
];

const _monthShortNames = <String>[
  "Jan",
  "Feb",
  "Mar",
  "Apr",
  "May",
  "Jun",
  "Jul",
  "Aug",
  "Sep",
  "Oct",
  "Nov",
  "Dec"
];

String fmtDividerDate(DateTime date) {
  final now = DateTime.now();

  final hour = _twoDigits(date.hour);
  final minute = _twoDigits(date.minute);
  final sendTime = '$hour:$minute';

  if (now.year > date.year) {
    final month = _twoDigits(date.month);
    final year = _fourDigits(date.year);
    final day = _twoDigits(date.day);
    return '$year-$month-$day $sendTime';
  } else if (now.month > date.month) {
    return '${_monthNames[date.month - 1]} ${date.day}, $sendTime';
  } else {
    final diff = now.day - date.day;
    if (diff == 0) {
      return 'Today $sendTime';
    } else if (diff == 1) {
      return 'Yesterday $sendTime';
    } else {
      return '${_monthNames[date.month - 1]} ${date.day}, $sendTime';
    }
  }
}

String fmtLastDate(DateTime date) {
  final now = DateTime.now();

  if (now.year > date.year) {
    final month = _twoDigits(date.month);
    final year = _fourDigits(date.year);
    final day = _twoDigits(date.day);
    return '$year-$month-$day';
  } else if (now.month > date.month) {
    return '${_monthShortNames[date.month - 1]} ${date.day}';
  } else {
    final diff = now.day - date.day;
    if (diff == 0) {
      final hour = _twoDigits(date.hour);
      final minute = _twoDigits(date.minute);
      return '$hour:$minute';
    } else if (diff == 1) {
      return 'Yesterday';
    } else {
      return '${_monthShortNames[date.month - 1]} ${date.day}';
    }
  }
}

String _fourDigits(int n) {
  int absN = n.abs();
  String sign = n < 0 ? '-' : '';
  if (absN >= 1000) return '$n';
  if (absN >= 100) return '${sign}0$absN';
  if (absN >= 10) return '${sign}00$absN';
  return '${sign}000$absN';
}

String _twoDigits(int n) {
  return n >= 10 ? '$n' : '0$n';
}
