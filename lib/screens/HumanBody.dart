import 'package:flutter/material.dart';
import 'package:dr_appointment/screens/CommonUtils.dart';
import 'package:dr_appointment/views/BodyView.dart';

class HumanBody extends StatefulWidget {
  VoidCallback imagePressed;
  //final Function changePage;
  //HumanBody(this.changePage);

  @override
  State<StatefulWidget> createState() {
    return _HumanBody();
  }
}

class _HumanBody extends State<HumanBody>{
 // final Function(int) changePage;
  //_HumanBody(this.changePage);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 30.0),
                child: Text(
                  "Whats wrong with you?",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Expanded(
                child: PageView(
                  children: <Widget>[
                    FrontBodyImage(),
                    BackBodyImage(),
                  ],
                ),
              ),
              startBtn(context),
            ],
          ))),
    );
  }
}

LinearGradient purpleGradient(int highColor, int lowColor) {
  return new LinearGradient(
    begin: const Alignment(0.0, -1.0),
    end: const Alignment(0.0, 1.0),
    colors: <Color>[Colors.purple[highColor], Colors.purple[lowColor]],
  );
}

//Login Button
Widget startBtn(BuildContext context) => Container(
      margin: const EdgeInsets.all(20),
      child: GestureDetector(
          //onTap: pageChange,
          child: loginBtnDesign('Get Started', '')),
    );
