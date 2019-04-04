import 'package:flutter/material.dart';


var bg = new BoxDecoration(
    image: new DecorationImage(
    image: AssetImage("assets/images/login_bg.png"),
    fit: BoxFit.cover,
));


Widget loginBtnDesign(String text, String imagePath){

  var arrowImage ;
  if(imagePath != ''){
    arrowImage = Image(
                    height: 8,
                    image: AssetImage('$imagePath'),
                  );
  }
  else{
    arrowImage =Container();
  }
  return Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60.0),
            ),
            color: Colors.transparent,
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage("assets/images/btn_login.png"))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "$text ",
                    style: TextStyle(color: Colors.white),
                  ),
                  arrowImage
                ],
              ),
            ),

          );
}