import 'package:flutter/material.dart';
import 'package:dr_appointment/screens/CommonUtils.dart';
import 'package:dr_appointment/screens/HomePage.dart';

class DiseaseaPage extends StatelessWidget {
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
                  children: <Widget>[diseaseText(), diseases(context)],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}

Widget diseaseText() {
  return Container(
    margin: const EdgeInsets.only(bottom: 10),
    child: Text(
      "Select Your Disease",
      style: TextStyle(
          color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),
    ),
  );
}

Widget searchField() {
  return Container(
    width: 220,
    margin: const EdgeInsets.only(bottom: 10, top: 10),
    child: Container(
      child: TextField(
        onChanged: (value) {
            print(value);
        },
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search, color: Colors.white,),
          hintText: "Select Your Doctor Category",
          hintStyle: TextStyle(color: Colors.white54)
        ),
        style: TextStyle(color: Colors.white, fontSize: 13),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white12,
      ),
    )
    );
}

Widget diseases(BuildContext context) {
  return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              singleDisease(context,"assets/images/ic_cardiologists.png","Cardiologists"), 
              singleDisease(context,"assets/images/ic_dermatologists.png","Dermatologists")],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              singleDisease(context,"assets/images/ic_endocrinologists.png","Endocrinologists"), 
              singleDisease(context,"assets/images/ic_cardiologists.png","Cardiologists")],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              singleDisease(context,"assets/images/ic_hematologists.png","Hematologists"), 
              singleDisease(context,"assets/images/ic_geneticists.png","Geneticists")],
          )
        ],
      ));
}

Widget singleDisease(BuildContext context, imgPath, String diseaseName) {
  return GestureDetector(
      onTap: () {
        print('$diseaseName  tapped!');
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      },
      child: Container(
        height: 105,
        width: 105,
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
