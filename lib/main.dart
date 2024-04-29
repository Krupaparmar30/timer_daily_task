import 'package:flutter/material.dart';
import 'package:timer_daily_task/daliy_task/flutter_buttons/fluffer_button.dart';
void main()
{
  runApp(buttonsApp());
}
class buttonsApp extends StatelessWidget {
  const buttonsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => buttonsPage(),
      },
    );
  }
}
