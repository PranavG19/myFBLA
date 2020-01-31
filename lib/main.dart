import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_fbla/screens/CreateEvent.dart';

import 'package:my_fbla/screens/QAndA.dart';
import 'package:my_fbla/screens/QRCode.dart';
import 'screens/Calendar.dart';
import 'screens/Login.dart';
import 'screens/AboutFBLA.dart';
import 'screens/JoinFBLA.dart';
import 'screens/CompetitiveEvents.dart';
import 'screens/LocalOfficerTeam.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyFBLA',
      theme: ThemeData(
        textTheme: TextTheme(
          body1: TextStyle(
            color: Color.fromRGBO(130, 130, 130, 1.0),
            fontSize: 20,
          ),
          body2: TextStyle(
            color: Color.fromRGBO(130, 130, 130, 1.0),
            fontSize: 15,
          ),
          title: TextStyle(
            fontSize: 30,
          ),
          subhead: TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          headline: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      routes: <String, WidgetBuilder>{
        'Login': (BuildContext context) => Login(),
        'AboutFBLA': (BuildContext context) => AboutFBLA(),
        'JoinFBLA': (BuildContext context) => JoinFBLA(),
        'CompetitiveEvents': (BuildContext context) => CompetitiveEvents(),
        'LocalOfficerTeam': (BuildContext context) => LocalOfficerTeam(),
        'Calendar': (BuildContext context) => Calendar(),
        'QAndA': (BuildContext context) => QAndA(),
        'QRCode': (BuildContext context) => QRCode(),
        'CreateEvent': (BuildContext context) => CreateEvent(),
      },
      home: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.lightBlueAccent,
        //   title: new Text(
        //     "MyFBLA",
        //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        //   ),
        // ),
        body: Login(),
      ),
    );
  }
}
