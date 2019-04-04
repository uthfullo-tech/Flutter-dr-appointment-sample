import 'package:flutter/material.dart';

final double borderheight = 0.5;

class PrescriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(alignment: Alignment.topCenter, 
        child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.only(top: 10),
                children: <Widget>[
                 title(),
                 issueDate(),
                 medicineTitle(),
                 medicineList("Kognum",'assets/images/ic_capsul.png'),
                 medicineList("Alendronate",'assets/images/ic_capsul.png'),
                 medicineList("Labetalol",'assets/images/ic_capsul.png'),
                 medicineList("Nikardipine",'assets/images/ic_injection.png'),
                 lineBreak(),
                 additionalTest()
                ],
              ),
        ),
      ),
    );
  }
}

Widget title() {
  return Container(
    margin: const EdgeInsets.only(top: 30, bottom: 20),
    child: Text(
      'Active Prescription',
      style: TextStyle(fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    ),
  );
}

Widget issueDate() {
  return Container(
      margin: const EdgeInsets.only(left: 30, right: 30),
      height: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            child: Text('Issue Date', style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          Expanded(
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.calendar_today, size: 12),
                    Text(
                  ' 09 Feb 2019',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 12),
                ),
                  ],
                )
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Icon(Icons.timer, size: 12,),
                    Text(
                  ' 12:45 AM',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 12),
                ),
                  ],
                )
              ),
            ],
          ),
          ),
          lineBreak(),
        ],
      ));
}


Widget medicineTitle(){
  return Container(
    margin: const EdgeInsets.only(left: 30, right: 30, top: 20),
    child: Text('Hypertensive Crisis', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
  );
}

Widget medicineList(String medicineName, String imagePath) {
  return Container(
      margin: const EdgeInsets.only(left: 30, right: 30, bottom: 10),
      height: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 20,
                      child: Image.asset(imagePath),
                    ),
                    Text(
                  ' $medicineName',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 12),
                ),
                  ],
                )
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                  '10mg',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 12),
                ),
                  ],
                )
              ),
            ],
          ),
          ),

          Container(
            alignment: Alignment.center,
            child: Text('After breakfasr 1 tab & After lunch 1 tab', style: TextStyle(color: Colors.black26, fontSize: 11),),
          ),
        ],
      ));
}


Widget additionalTest(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Container(
        margin: const EdgeInsets.all(15),
        child: Text('Additional Tests'),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          singleTest('Blood Test', 'assets/images/ic_blood_test.png'),
          singleTest('Suger Test', 'assets/images/ic_suger_test.png'),
          singleTest('Urine Test', 'assets/images/ic_urine_test.png')
        ],
      )
    ],
  );
}

Widget singleTest(String name, String imgPath){
  return Column(
    children: <Widget>[
      Text(name, style: TextStyle(fontSize: 10),),
      Container(
        margin: const EdgeInsets.only(top: 10, bottom: 20),
                      height: 30,
                      child: Image.asset(imgPath),
                    ),
    ],
  );
}

Widget lineBreak() {
  return Container(
    color: Colors.black12,
    height: borderheight,
  );
}