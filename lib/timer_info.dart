import 'package:flutter/foundation.dart';

class TimerInfo extends ChangeNotifier {
  int _remainingTime = 60;

  int get remainingTime => _remainingTime;

  updateRemainingTime() {
    _remainingTime--;
    if (_remainingTime == 0) {
      _remainingTime = 60;
    }
    notifyListeners();
  }
}
