import 'package:flutter/material.dart';
import 'package:park_timer_new_version/models/soat.dart';
import 'package:park_timer_new_version/pages/home_page.dart';

void main(){
  runApp(TimerApp());
}
class TimerApp extends StatelessWidget {
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        HomePage.id:(context)=>HomePage(),
        Soat.id:(context)=>Soat(),
      },
    );
  }

}