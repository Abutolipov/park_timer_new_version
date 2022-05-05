import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/soat.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const id="home_id";
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: FlatButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
              return Soat();
            }));
          },
          color: Colors.black,
          child: Text("Timerga otish",style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
