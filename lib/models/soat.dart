import 'dart:async';

import 'package:flutter/material.dart';
import 'package:park_timer_new_version/models/qora_quti.dart';

class Soat extends StatefulWidget {
  static const id = "id_id";

  @override
  State<Soat> createState() => _SoatState();
}

class _SoatState extends State<Soat> {
  final duration = Duration(seconds: 1);
  int secondsPass = 0;
  bool isActive = false;
  Timer? timer;

  void handleTick() {
    if (isActive) {
      setState(() {
        secondsPass = secondsPass + 1;
      });
    }
  }

  Widget build(BuildContext context) {
    timer ??= Timer.periodic(duration, (Timer t) {
      handleTick();
    });
    // if(timer!=null){
    //   Timer.periodic(duration, (Timer s) {
    //     handleTick();
    //   });
    // }
    int sec = secondsPass % 60;
    int min = secondsPass ~/ 60;
    int hour = secondsPass ~/ (60 * 60);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.grey),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Timer app"),
        ),
        body: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Qora(value: hour.toString().padLeft(2, '0'), lable: 'HRS'),
                Qora(value: min.toString().padLeft(2, '0'), lable: 'MIN'),
                Qora(value: sec.toString().padLeft(2, '0'), lable: 'SEC'),
              ],
            ),

          ],
        ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){
            isActive=!isActive;
          },

          tooltip: 'Start',
          child: Icon(
            Icons.not_started_outlined,
            size: 55,
            color: Colors.deepOrange,
          ),
          backgroundColor: Colors.black,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,


      ),
    );
  }
}
