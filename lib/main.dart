import 'package:flutter/material.dart';
import 'package:flutter_provider_afzalali/timer_info.dart';
import 'package:provider/provider.dart';

import 'homepage.dart';

// https://www.youtube.com/watch?v=QT2LFIe794I&t=154s
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: // Rebuilds only the widgets that are listening
          ChangeNotifierProvider(
        create: (ctx) => TimerInfo(),
        child: HomePage(),
      ),
    );
  }
}
