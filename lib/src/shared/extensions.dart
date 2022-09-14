extension IntX on int {
  String durationToString() {
    final duration = Duration(seconds: this);

    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitHours =
        duration.inHours <= 0 ? '' : '${twoDigits(duration.inHours)}:';
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "$twoDigitHours$twoDigitMinutes:$twoDigitSeconds";
  }
}
