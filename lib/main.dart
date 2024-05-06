import 'package:flutter/material.dart';
import 'package:timer_daily_task/daliy_task/Analog_clock_app/analog_clock.dart';
import 'package:timer_daily_task/daliy_task/Gigital_Time_Clock/digitalclock.dart';
import 'package:timer_daily_task/daliy_task/Stock_watch_app/stock_watch.dart';
import 'package:timer_daily_task/daliy_task/flutter_buttons/fluffer_button.dart';
void main()
{
  runApp(clockApp());
}
class clockApp extends StatelessWidget {
  const clockApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        // '/':(context) => buttonsPage(),
        '/':(context) => digitalclockPage(),
        '/analog':(context) => analogPage(),
        '/strap':(context) => strapPage(),


      },
    );
  }
}
