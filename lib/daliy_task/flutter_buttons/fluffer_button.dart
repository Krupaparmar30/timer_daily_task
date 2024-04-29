import 'dart:math';

import 'package:flutter/material.dart';

class buttonsPage extends StatefulWidget {
  const buttonsPage({super.key});

  @override
  State<buttonsPage> createState() => _buttonsPageState();
}

class _buttonsPageState extends State<buttonsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(

          appBar: AppBar(
            backgroundColor: Colors.purple.shade50,
            elevation: 13,
            centerTitle: true,
            title: const Text('Flutter All Buttons', style: TextStyle(
                fontSize: 22
            ),),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 100,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.purple.shade100,
                          border: Border.symmetric(
                              horizontal: BorderSide(
                                  color: Colors.purple
                              )
                          )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          FloatingActionButton(onPressed:
                              () {},
                            child: Icon(Icons.add),
                          ),
                          FloatingActionButton(onPressed:
                              () {},
                            child: const Row(
                              children: [
                                Icon(Icons.add),
                                Text('Add')
                              ],
                            ),
                          ),
                          FloatingActionButton(onPressed:
                              () {},
                            child: Icon(Icons.ac_unit),
                          ),




                        ],

                      ),
                    ),


                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 100,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.purple.shade50,
                        border: Border.symmetric(
                          horizontal: BorderSide(
                            color: Colors.purple
                          )
                        )

                      ),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(onPressed: () {

                          }, child:Row(
                            children: [
                              Text('Submit', style: TextStyle(color: Colors.black),),
                              Icon(Icons.done)
                            ],
                          )
                          ),
                          ElevatedButton(onPressed: () {

                          }, child: Text('Submit ', style: TextStyle(
                              color: Colors.black,
                          ),),),

                        ],
                      ),
                    ),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Container(

                      height: 100,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.purple.shade100,
                         border: Border.symmetric(horizontal: BorderSide(
                           color: Colors.purple
                         )),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(onPressed: () {

                          }, child: Text('Read More',style: TextStyle(
                            fontSize: 16,color: Colors.black
                          ),)),
                          TextButton(onPressed: () {

                          }, child: Text('All Details',style: TextStyle(
                              fontSize: 16,color: Colors.black
                          ),)),
                          TextButton(onPressed: () {

                          }, child: Text('Thanks',style: TextStyle(
                              fontSize: 16,color: Colors.black
                          ),))
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.purple.shade50,
                        border:const Border.symmetric(
                          horizontal: BorderSide(
                            color: Colors.purple,
                          )
                        )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          OutlinedButton(onPressed: () {

                          }, child: const Text('New Border',style: TextStyle(
                            color: Colors.black
                          ),)),
                          OutlinedButton(onPressed: () {

                          }, child:const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Wows',style: TextStyle(
                                  color: Colors.black
                              ),),
                              Icon(Icons.ac_unit)
                            ],
                          )
                          )

                        ],
                      ),

                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.purple.shade100,
                        border:const  Border.symmetric(
                          horizontal: BorderSide(
                            color: Colors.purple
                          )
                        )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(onPressed: () {

                          }, icon: Icon(Icons.star)),
                          IconButton(onPressed: () {

                          }, icon: Icon(Icons.shield_moon_rounded)),
                          IconButton(onPressed: () {

                          }, icon: Icon(Icons.menu_book_outlined)),
                        ],
                      ),
                    )
                  ],
                ),
                FilledButton(onPressed: () {

                }, child: Text('All Done')),



              ],
            ),
          ),
        )
    );
  }
}
