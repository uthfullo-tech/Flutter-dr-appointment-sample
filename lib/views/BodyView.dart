import 'package:flutter/material.dart';

class FrontBodyImage extends StatefulWidget {
  static _FrontBodyImage of(BuildContext context) =>
      context.ancestorStateOfType(const TypeMatcher<_FrontBodyImage>());
  @override
  _FrontBodyImage createState() => _FrontBodyImage();
}

class _FrontBodyImage extends State<FrontBodyImage> {
  String imageName = "assets/images/body.png";
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          child: Text(
            "Front side",
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
        ),
        Stack(
          children: <Widget>[
            Container(
              width: width,
              height: 300,
              //child: Image.asset("assets/images/body.png"),
              child: Image.asset(imageName),
            ),
            Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new GestureDetector(
                        onTap: () {
                          print("Container clicked");
                          changeImage("assets/images/face.png");
                        },
                        child: Opacity(
                          opacity: 0.0,
                          child: Container(
                            height: 60,
                            width: 40,
                            color: Colors.green,
                          ),
                        )),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {
                          print("Container clicked");
                          changeImage("assets/images/right_shoulder.png");
                        },
                        child: Opacity(
                          opacity: 0.0,
                          child: Container(
                            height: 50,
                            width: 50,
                            color: Colors.red,
                          ),
                        )),
                    GestureDetector(
                        onTap: () {
                          print("Container clicked");
                          changeImage("assets/images/left_shoulder.png");
                        },
                        child: Opacity(
                          opacity: 0.0,
                          child: Container(
                            height: 50,
                            width: 50,
                            color: Colors.yellow,
                          ),
                        )),
                  ],
                ),
              ],
            )
          ],
        ),
      ],
    );
  }

  void changeImage(String path) {
    setState(() {
      imageName = path;
    });
  }
}




class BackBodyImage extends StatefulWidget {
  static _BackBodyImage of(BuildContext context) =>
      context.ancestorStateOfType(const TypeMatcher<_BackBodyImage>());
  @override
  _BackBodyImage createState() => _BackBodyImage();
}

class _BackBodyImage extends State<BackBodyImage> {
  String imageName = "assets/images/body_back.png";
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          child: Text(
            "Back side",
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
        ),
        Stack(
          children: <Widget>[
            Container(
              width: width,
              height: 300,
              //child: Image.asset("assets/images/body.png"),
              child: Image.asset(imageName),
            ),
            Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new GestureDetector(
                        onTap: () {
                          print("Container clicked");
                          changeImage("assets/images/face.png");
                        },
                        child: Opacity(
                          opacity: 0.0,
                          child: Container(
                            height: 60,
                            width: 40,
                            color: Colors.green,
                          ),
                        )),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {
                          print("Container clicked");
                          changeImage("assets/images/right_shoulder.png");
                        },
                        child: Opacity(
                          opacity: 0.0,
                          child: Container(
                            height: 50,
                            width: 50,
                            color: Colors.red,
                          ),
                        )),
                    GestureDetector(
                        onTap: () {
                          print("Container clicked");
                          changeImage("assets/images/left_shoulder.png");
                        },
                        child: Opacity(
                          opacity: 0.0,
                          child: Container(
                            height: 50,
                            width: 50,
                            color: Colors.yellow,
                          ),
                        )),
                  ],
                ),
              ],
            )
          ],
        )
      ],
    );
  }

  void changeImage(String path) {
    setState(() {
      //imageName = path;
    });
  }
}
