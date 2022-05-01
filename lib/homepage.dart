import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_provider_afzalali/timer_info.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int initialValue = 60;

  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 1), (t) {
      Provider.of<TimerInfo>(context, listen: false).updateRemainingTime();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('===== Started from scratch =====');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset('assets/stopwatch.png'),
            const SizedBox(height: 32),
            // Note that child might be tied to the main widget, it doesn't get updated
            Consumer<TimerInfo>(
                builder: (BuildContext context, timerInfo, Widget? child) =>
                    Text(
                      timerInfo.remainingTime.toString(),
                      style: TextStyle(fontSize: 72),
                    )),
          ],
        ),
      ),
    );
  }
}

// Description: provider for state management
// URL: https://pub.dev/packages/provider
// Install: flutter pub add provider
// App: flutter_shop (/src/mobile/flutter/learning/udemy/flutter-dart-complete-guide/flutter_shop)

// Example: flutter_shop has too many examples
// TODO: categorize the API
