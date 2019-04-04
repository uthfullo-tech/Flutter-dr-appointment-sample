import 'package:flutter/material.dart';

final double borderheight = 0.5;

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Stack(
            children: <Widget>[
              topBar(context),
              Container(
                padding: const EdgeInsets.only(top: 50),
                child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.only(top: 10),
                children: <Widget>[
                  profileImage(),
                  profileName,
                  lineBreak(),
                  infoList('Mobile Number', '+0987 1234 5432'),
                  infoList('Email Id', 'johndoe@gmail.com'),
                  infoList('Gender', 'Male'),
                  infoList('Date of birth', '12 June 1992'),
                  infoList('Blood Group', 'O+ve'),
                  infoList('Height', "5 ft"),
                  infoList('Weight', "50 kg"),
                  infoList('Marital Status', "Married"),
                  infoList('Emergency Contact', "add details"),
                  infoList('Location', "Banglades"),

                  yourAllergies(context),

                  noteField()
                  
                ],
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget topBar(BuildContext context) {
  return Container(
    height: 60,
    margin: const EdgeInsets.only(right: 20),
    child: Row(
    children: <Widget>[
      Expanded(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: const EdgeInsets.only(top: 30, left: 10),
            child: null
            // Icon(
            //   Icons.arrow_back,
            //   color: Colors.black,
            // ),
          ),
        ),
      ),
      Expanded(
          flex: 3,
          child: Align(
            alignment: Alignment.center,
            child: Container(
              margin: const EdgeInsets.only(top: 25),
              child: Text(
                'Profile',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          )),
      Container(
        margin: const EdgeInsets.only(top: 30, left: 20),
        child: Icon(
          Icons.edit,
          color: Colors.black,
        ),
      ),
    ],
  ),
  );
}

//Logo
Widget profileImage() {
  return Column(
    children: <Widget>[
      Container(
        height: 100,
        width: 100,
        margin: const EdgeInsets.only(top: 10),
        child: CircleAvatar(
            radius: 50.0,
            backgroundColor: const Color(0xFF778899),
            backgroundImage: AssetImage('assets/images/ic_corn.png')),
      )
    ],
  );
}

//Title
var profileName = Container(
    margin: const EdgeInsets.all(10),
    child: Center(
      child: Text(
        "John Doe",
        style: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      ),
    ));

Widget infoList(String title, String value) {
  return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      height: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Text(
                  title,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 17),
                ),
              ),
              Expanded(
                child: Text(
                  value,
                  textAlign: TextAlign.right,
                  style: TextStyle(color: Colors.black38),
                ),
              ),
            ],
          ),
          ),
          lineBreak(),
        ],
      ));
}

Widget lineBreak() {
  return Container(
    color: Colors.black12,
    height: borderheight,
  );
}



Widget yourAllergies(BuildContext context){
  return Container(
    child: Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.all(20),
          child: Text("Your Allergies", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
        ),
        Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              singleAllergies(context,"assets/images/ic_fish.png","Fish"), 
              singleAllergies(context,"assets/images/ic_nut.png","Nut")],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              singleAllergies(context,"assets/images/ic_egg.png","Egg"), 
              singleAllergies(context,"assets/images/ic_dairy.png","Dairy")],
          )
      ],
    ),
  );
}


Widget singleAllergies(BuildContext context, imgPath, String diseaseName) {
  return GestureDetector(
      onTap: () {
        print('$diseaseName  tapped!');
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => ExtraNotePage()));
      },
      child: Container(
        height: 120,
        width: 120,
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.white),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Image.asset(imgPath),
          ),
          
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Text("$diseaseName", style: TextStyle(fontSize: 10),),
          )
          
        ],
      ),
      )
      
      
  );
}

Widget noteField() {
  return Container(
    width: 250,
    height: 150,
    margin: const EdgeInsets.all(30),
    child: Container(
      padding: const EdgeInsets.all(10),
      child: Text('Some text', style: TextStyle(color: Colors.black38),),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black12,
      ),
    )
    );
}