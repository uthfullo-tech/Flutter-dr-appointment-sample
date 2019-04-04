import 'package:flutter/material.dart';
import 'package:dr_appointment/screens/CommonUtils.dart';
import 'package:dr_appointment/screens/BloodGroup.dart';

class MarriedPage extends StatelessWidget {
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
                  //Navigator.pop(context);
                },
                // child: Container(
                //   margin: const EdgeInsets.only(top: 30, left: 20),
                //   child: Icon(
                //     Icons.arrow_back,
                //     color: Colors.white,
                //   ),
                // ),
              ),
              SizedBox.expand(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //titleText(),
                    logo(),
                    marriedText(),
                    bottons(context)
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

Widget titleText() {
  return Container(
    margin: const EdgeInsets.only(bottom: 30),
    child: Text(
      "This is used to set up recommandations just for you.",
      style: TextStyle(color: Colors.white, fontSize: 10),
    ),
  );
}

Widget logo() {
  return Container(
      margin: const EdgeInsets.only(bottom: 30),
      height: 200,
      child: Image.asset("assets/images/married.png"));
}

Widget marriedText() {
  return Container(
    margin: const EdgeInsets.only(bottom: 30),
    child: Text(
      "Are you married?",
      style: TextStyle(
          color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
    ),
  );
}

Widget bottons(BuildContext context) {
  return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      yesBtn(context),
      noBtn(context)
    ],
  ));
}

Widget yesBtn(BuildContext context) {
  return GestureDetector(
      onTap: () {
        print('MyButton yes tapped!');
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => BloodGroup()));
      },
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            height: 40,
            child: Image.asset("assets/images/btn_yes.png"),
          ),
          Text(
            "Yes",
            style: TextStyle(color: Colors.white),
          )
        ],
      ));
}


Widget noBtn(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(left: 10),
    child: GestureDetector(
      onTap: () {
        print('MyButton no tapped!');
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => BloodGroup()));
      },
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            height: 40,
            child: Image.asset("assets/images/btn_no_white.png"),
          ),
          Text(
            "No",
            style: TextStyle(color: Colors.white),
          )
        ],
      )),
  );
}
