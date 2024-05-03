import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class analogPage extends StatefulWidget {
  const analogPage({super.key});

  @override
  State<analogPage> createState() => _analogPageState();
}

class _analogPageState extends State<analogPage> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(seconds: 1), (timer) {

      setState(() {
        dateTime=DateTime.now();
        if(dateTime.hour>11)
        {
          time='PM';
        }
        else{
          time='AM';
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
            height: 781.5,
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
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Text('${dateTime.day}:${dateTime.month}',style: TextStyle(
                  //   color: Colors.white,
                  //   fontSize: 32
                  // ),),
                  Padding(
                    padding: const EdgeInsets.only(left: 120,bottom:1,top: 60),
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
                    padding: const EdgeInsets.only(left:140,bottom:5),
                    child: Row(
                      children: [
                        Text('${dateTime.day} $month',style: TextStyle(fontSize: 30, color: Colors.white),

                        ),

                      ],
                    ),
                  ),
                  Text('${day}',style: TextStyle(color: Colors.white),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 180,
                      width: 180,
                    decoration:const  BoxDecoration(
                      color:Colors.white,
                      shape: BoxShape.circle,
                        // border: Border.all(color: Colors.black,width: 1),


                        boxShadow: [
                      BoxShadow(
                          color: Color(0xff000b25),
                          blurRadius: 5,
                          spreadRadius: 5,
                          offset: Offset(0,5)
                      )
                    ]
                    ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [

                          Container(
                            height: 10,
                            width: 10,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,

                            ),

                          ),
                        ...List.generate(60, (index) => Transform.rotate(
                          angle: ((index+1)*6*pi)/180,
                         child: ((index+1)%5==0)
                          ?
                         const VerticalDivider(
                            thickness: 4,
                            color:Colors.blue,
                            indent: 0,
                            endIndent: 165,
                          )
                             :
                             const VerticalDivider(
                               thickness: 3,
                               color: Colors.black,
                               indent: 0,
                               endIndent: 170,
                             ),
                        )),

                          Transform.rotate(
                              angle:
    // +(dateTime.minute/60))
                          (((dateTime.hour+(dateTime.minute/60))*30*pi)/180),
                            child: const VerticalDivider(
                              thickness: 3,
                              color: Colors.red,
                              indent: 40,
                              endIndent: 80,
                            ),
                          ),

                          Transform.rotate(
                            angle:
                            ((dateTime.minute*6*pi)/180),
                            child: const VerticalDivider(
                              thickness: 4,
                              color: Colors.black,
                              indent: 18,
                              endIndent: 80,
                            ),
                          ),

                          Transform.rotate(
                            angle:
                            ((dateTime.second*6*pi)/180),
                            child: const VerticalDivider(
                              thickness: 3,
                              color: Colors.black,
                              indent: 30,
                              endIndent: 80,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
DateTime dateTime=DateTime.now();
String day = '';
String month='';
String time='';