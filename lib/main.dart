import 'package:flutter/material.dart';
import 'package:dr_appointment/screens/MarriedPage.dart';
import 'package:flutter/services.dart';

//void main() => runApp(MyApp());
void main(){
SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
    .then((_) {
      runApp(new MyApp());
    });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(
        decoration: BoxDecoration(
          gradient: blueGradient(100, 500)
        ),
        //child: HomePage()
        child: MarriedPage(),
      ),
    );
  }
}

LinearGradient blueGradient(int highColor, int lowColor){
    return new LinearGradient(
      begin: const Alignment(0.0, -1.0),
      end: const Alignment(0.0, 1.0),
      colors: <Color>[
        Colors.blue[highColor],
        Colors.blue[lowColor]
      ],
    );
  }


