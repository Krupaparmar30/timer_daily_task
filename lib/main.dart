import 'package:flutter/material.dart';
import 'package:timer_daily_task/daliy_task/Gigital_Time_Clock/digitalclock.dart';
import 'package:timer_daily_task/daliy_task/flutter_buttons/fluffer_button.dart';
void main()
{
  runApp(digitalApp());
}
class digitalApp extends StatelessWidget {
  const digitalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        // '/':(context) => buttonsPage(),
        '/':(context) => digitalclockPage(),

      },
    );
  }
}
