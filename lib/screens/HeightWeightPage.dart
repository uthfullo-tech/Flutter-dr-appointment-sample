import 'package:flutter/material.dart';
import 'package:dr_appointment/screens/CommonUtils.dart';
import 'package:dr_appointment/screens/DiseaseaPage.dart';
import 'package:dr_appointment/utils/SliderDemo.dart';

class HeightWeightPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SizedBox.expand(
        child: Container(
          decoration: bg,
          child: Stack(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 30, left: 20),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox.expand(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    heightWeightText(),
                    titleText(),
                    // Stack(
                    //   alignment: Alignment.center,
                    //   children: <Widget>[
                    //     Container(
                    //       margin: const EdgeInsets.only(right: 40),
                    //       child: Column(
                    //         children: <Widget>[
                    //           bodyImage(),
                    //           weightView()
                    //         ],
                    //       ),
                    //     ), 
                    //   ],
                    // ),
                    bodyImage(),
                    weightView(),
                    finishBtn(context)
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}

Widget heightWeightText() {
  return Container(
    margin: const EdgeInsets.only(bottom: 10),
    child: Text(
      "How much do your Weight?",
      style: TextStyle(
          color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),
    ),
  );
}

Widget titleText() {
  return Container(
    margin: const EdgeInsets.only(bottom: 30),
    child: Text(
      "This is used to set up recommandations just for you.",
      style: TextStyle(color: Colors.white, fontSize: 10),
    ),
  );
}

Widget bodyImage() {
  return Container(height: 230, child: Image.asset("assets/images/body.png"));
}

Widget weightView() {
  return Container(
      height: 50,
      width: 200,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(bottom: 3, left: 20, right: 20),
            height: 50,
            child: Image.asset("assets/images/bg_scale_weight.png"),
          ),
          SliderDemo()
        ],
      ));
}

Widget heightView() {
  return new RotationTransition(
      turns: new AlwaysStoppedAnimation(270 / 360),
      child: Container(
          height: 50,
          width: 300,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(bottom: 3, left: 20, right: 20),
                height: 50,
                child: Image.asset("assets/images/bg_scale_weight.png"),
              ),
              SliderDemo()
            ],
          )));
}

Widget finishBtn(BuildContext context) {
  return GestureDetector(
      onTap: () {
        print('MyButton yes tapped!');
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DiseaseaPage()));
      },
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            height: 40,
            child: Image.asset("assets/images/btn_login.png"),
          ),
          Text(
            "Finish",
            style: TextStyle(color: Colors.white),
          )
        ],
      ));
}
