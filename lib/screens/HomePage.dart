import 'package:flutter/material.dart';
import 'package:dr_appointment/screens/HumanBody.dart';
import 'package:dr_appointment/screens/ProfilePage.dart';
import 'package:dr_appointment/screens/PrescriptionPage.dart';
import 'package:dr_appointment/screens/SettingsPage.dart';

Color myCanvasColor = Colors.white;
Color myPrimaryColor = Colors.black;
Color myTextColor = Colors.black26;

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final _widgetOptions = [
    HumanBody(),
    ProfilePage(),
    PrescriptionPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: blueGradient(100, 500),
        ),
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
          //child: HumanBody(),
        ),
      ),

      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
            canvasColor: myCanvasColor,
            // sets the active color of the `BottomNavigationBar` if `Brightness` is light
            primaryColor: myPrimaryColor,
            textTheme: Theme.of(context).textTheme.copyWith(
                caption: new TextStyle(
                    color:
                        myTextColor))), // sets the inactive color of the `BottomNavigationBar`

        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today),
                title: Text(
                  'Appointment',
                  style: TextStyle(fontSize: 10),
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                title: Text(
                  'Profile',
                  style: TextStyle(fontSize: 10),
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.ac_unit),
                title: Text(
                  'Prescription',
                  style: TextStyle(fontSize: 10),
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                title: Text(
                  'Settings',
                  style: TextStyle(fontSize: 10),
                )),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: onItemTapped,
        ),
      ),
      //backgroundColor: Colors.blue,
    );
  }

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
        myCanvasColor = Colors.blue;
        myPrimaryColor = Colors.white;
        myTextColor = Colors.white30;
      } else {
        myCanvasColor = Colors.white;
        myPrimaryColor = Colors.black;
        myTextColor = Colors.black26;
      }
    });
  }
}

LinearGradient blueGradient(int highColor, int lowColor) {
  return new LinearGradient(
    begin: const Alignment(0.0, -1.0),
    end: const Alignment(0.0, 1.0),
    colors: <Color>[Colors.blue[highColor], Colors.blue[lowColor]],
  );
}