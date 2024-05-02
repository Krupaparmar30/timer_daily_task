import 'dart:async';

import 'package:flutter/material.dart';

class digitalclockPage extends StatefulWidget {
  const digitalclockPage({super.key});

  @override
  State<digitalclockPage> createState() => _digitalclockPageState();
}

class _digitalclockPageState extends State<digitalclockPage> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(seconds: 1), (timer) {

     setState(() {
       dateTime=DateTime.now();
       if(dateTime.hour>12)
         {
           time='AM';
         }
       else{
         time='PM';
       }
       switch(dateTime.weekday)
       {
         case 1:
           day = 'monday';
            break;
         case 2:
           day='tuesday';
           break;
         case 3:
           day='wednesday';
           break;
         case 4:
           day='thursday';
           break;
         case 5:
           day='friday';
           break;
         case 6:
           day='saturday';
           break;
         case 7:
           day='sunday'; break;

       }
       switch(dateTime.month)
           {
         case 1:
           month='january';
         case 2:
           month='february';
         case 3:
           month='march';
         case 4:
           month='april';
         case 5:
           month='may';
         case 6:
           month='june';
         case 7:
           month='july';
         case 8:
           month='august';
         case 9:
           month='september';
         case 10:
           month='october';
         case 11:
           month='november';
         case 12:
           month='december';
       }

     });



    });
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 781,
            width: 500,
            decoration: BoxDecoration(
              color: Colors.pink,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                       'assets/images/sky2.jpeg'
                )
              )
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Text('${dateTime.day}:${dateTime.month}',style: TextStyle(
                  //   color: Colors.white,
                  //   fontSize: 32
                  // ),),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Row(
                    children: [
                      Text('${dateTime.hour%12}:${dateTime.minute}:${dateTime.second}',style: TextStyle(
                          color: Colors.white,
                          fontSize: 32
                      ),),
                      Text(' $time',style: TextStyle(
                          color: Colors.white
                      ),),
                    ],
                  ),
                ),



                 Padding(
                   padding: const EdgeInsets.only(left:135),
                   child: Row(
                     children: [
                       Text('${dateTime.day} $month',style: TextStyle(fontSize: 32, color: Colors.white),

                       ),

                     ],
                   ),
                 ),
                  Text('${day}',style: TextStyle(color: Colors.white),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
DateTime dateTime=DateTime.now();
String day = '';
String month='';
String time='';
