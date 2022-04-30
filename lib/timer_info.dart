import 'package:flutter/widgets.dart';

class TimerInfo with ChangeNotifier {
  int _remainingTime = 0;
  int getRemainingTime() => _remainingTime;

  upDateRemainingTime() {
    _remainingTime++;
    notifyListeners();
  }
}
