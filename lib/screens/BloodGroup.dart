import 'package:flutter/material.dart';
import 'package:dr_appointment/screens/CommonUtils.dart';
import 'package:dr_appointment/screens/HeightWeightPage.dart';

class BloodGroup extends StatelessWidget {
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
                  children: <Widget>[bloodText(), titleText(), bloodGrous(context)],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}

Widget bloodText() {
  return Container(
    margin: const EdgeInsets.only(bottom: 10),
    child: Text(
      "Choose Your Blood Group",
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

Widget bloodGrous(BuildContext context) {
  return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[singleBlood(context,"A+"), singleBlood(context,"A-")],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[singleBlood(context,"B+"), singleBlood(context,"B-")],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[singleBlood(context,"O+"), singleBlood(context,"O+")],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[singleBlood(context,"AB+"), singleBlood(context,"AB-")],
          )
        ],
      ));
}

Widget singleBlood(BuildContext context,String bloodName) {
  return GestureDetector(
      onTap: () {
        print('$bloodName  tapped!');
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HeightWeightPage()));
      },
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(7),
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.white),
          ),
          Text(
            "$bloodName",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),
          )
        ],
      ));
}
