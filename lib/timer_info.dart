import 'package:flutter/widgets.dart';

class TimerInfo with ChangeNotifier {
  int _remainingTime = 60;

  int get remainingTime => _remainingTime;

  void updateRemainingTime() {
    _remainingTime--;
    if (_remainingTime == 0) {
      _remainingTime = 60;
    }
    notifyListeners();
  }
}
