import 'package:flutter/material.dart';

final double borderheight = 0.5;

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
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
              ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(10.0),
                children: <Widget>[
                  title(),
                  topLogo,
                  titleText,
                  settingsText,
                  notificationToggle(),
                  contactUs(),
                  aboutUs(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

//Logo
var topLogo = Container(
    margin: const EdgeInsets.only(left: 20, right: 20),
    height: 200,
    child: Image.asset("assets/images/settings_image.png"));


Widget title(){
  return Container(
    margin: const EdgeInsets.only(top: 30, bottom: 20),
    child: Text(
                    'Setting',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
  );
}

//Title
var titleText = Container(
    margin: const EdgeInsets.all(10),
    child: Center(
      child: Text(
        "Turn on Notifications",
        style: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      ),
    ));

var settingsText = Container(
  margin: const EdgeInsets.all(10),
  child: Text(
    "This way you will see when someone message you instantly",
    textAlign: TextAlign.center,
    style: TextStyle(
        color: Colors.black87, fontSize: 12, fontWeight: FontWeight.bold),
  ),
);

Widget notificationToggle() {
  return Column(
    children: <Widget>[
      Container(
        color: Colors.black12,
        height: borderheight,
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Container(
          margin: const EdgeInsets.only(left: 40),
          height: 50,
          child: Row(
            children: <Widget>[
              notificationText,
              NotificationSwitch(),
            ],
          ),
        ),
      ),
      Container(
        color: Colors.black12,
        height: borderheight,
      )
    ],
  );
}

Widget contactUs() {
  return Column(
    children: <Widget>[
      Container(
        margin: const EdgeInsets.only(left: 50),
        height: 40,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Contact us",
            style: TextStyle(color: Colors.blue),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      Container(
        color: Colors.black12,
        height: borderheight,
      )
    ],
  );
}

Widget aboutUs() {
  return Column(
    children: <Widget>[
      Container(
        margin: const EdgeInsets.only(left: 50),
        height: 40,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "About us",
            style: TextStyle(color: Colors.blue),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      Container(
        color: Colors.black12,
        height: borderheight,
      )
    ],
  );
}

var notificationText = Container(
  margin: const EdgeInsets.all(10),
  child: Text(
    "Turn on Notifications",
    textAlign: TextAlign.center,
    style: TextStyle(color: Colors.black87, fontSize: 12),
  ),
);

class NotificationSwitch extends StatefulWidget {
  NotificationSwitch({Key key}) : super(key: key);

  @override
  _NotificationSwitch createState() => _NotificationSwitch();
}

class _NotificationSwitch extends State<NotificationSwitch> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      child: Switch(
        value: isSwitched,
        onChanged: (value) {
          setState(() {
            isSwitched = value;
          });
        },
        activeTrackColor: Colors.blue,
        activeColor: Colors.blue,
      ),
    );
  }
}
