import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:my_fbla/screens/BaseAppBar.dart';
import 'package:my_fbla/screens/HamburgerMenu.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:table_calendar/table_calendar.dart';

import 'RSVPForm.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  CalendarController _calendarController;
  static DateTime now = new DateTime.now();
  static DateTime date = new DateTime(now.year, now.month, now.day);

  final data = FirebaseDatabase.instance.reference();

  String getData(String num) {
    data.child("calendarEvents").child(num).once().then((DataSnapshot snap) {
      var data = snap.value;
      return data;
    });
  }

  int numOfEvents() {
    data.child("calendarEvents").once().then((DataSnapshot snap) {
      return snap.value.length;
    });
  }

  DateTime getDate(int num) {
    data
        .child("calendarEvents")
        .child(num.toString())
        .child("date")
        .once()
        .then((DataSnapshot snap) {
      var date = snap.value.split(" ");
      print(date[0]);
      int day, month, year;
      day = int.parse(date[2]);
      month = int.parse(date[1]);
      year = int.parse(date[0]);
      return new DateTime(year, month, day);
    });
  }

  String getName(int num) {
    data
        .child("calendarEvents")
        .child(num.toString())
        .child("name")
        .once()
        .then((DataSnapshot snap) {
      var name = snap.value;
      return name;
    });
  }

  String getLocation(String num) {
    data
        .child("calendarEvents")
        .child(num)
        .child("location")
        .once()
        .then((DataSnapshot snap) {
      var location = snap.value;
      return location;
    });
  }

  @override
  void initState() {
    super.initState();
    setup();
    _calendarController = CalendarController();
  }

  void setup() {
    // for (int i = 0; i < 12; i++) {
    //   _events.putIfAbsent(
    // DateTime(getDate(i.toString(), "y"), getDate(i.toString(), "m"),
    // getDate(i.toString(), "d")),
    //       () => [
    //             new EventInfo(
    //                 getName(i.toString()), getLocation(i.toString()), true)
    //           ]);
    // }
    // for (int i = 0; i < 12; i++) {
    //   _events[DateTime(getDate(1.toString(), "y"), getDate(1.toString(), "m"),
    //       getDate(1.toString(), "d"))] = [
    //     new EventInfo(
    //         'Region 4 Leadership Conference', 'North County High School', false)
    //   ];
    // }
    // _events[DateTime(getDate(1, "y"), getDate(1, "m"), getDate(1, "d"))] = [
    //   new EventInfo(
    //       'Region 4 Leadership Conference', 'North County High School', false)
    // ];
    // print(getDate(1).day);
  }

  //todo: add method to add events with ranges to map
  final Map<DateTime, List<dynamic>> _events = {
    DateTime(2020, 1, 4): [
      new EventInfo(
          'Region 4 Leadership Conference', 'North County High School', false)
    ],
    DateTime(2020, 1, 9): [
      new EventInfo(
          'Region 2 Leadership Conference', 'Dulaney High School', false)
    ],
    DateTime(2020, 1, 11): [
      new EventInfo('Region 1 Leadership Conference',
          'Dr. Henry A. Wise Jr. High School', false)
    ],
    DateTime(2020, 1, 15): [
      new EventInfo(
          'Region 3 Leadership Conference', ' Century High School', false)
    ],
    DateTime(2020, 1, 18): [
      new EventInfo('Region 5 Leadership Conference',
          'Applications and Research Lab', true)
    ],
    DateTime(now.year, now.month, now.day): [],

    //Maryland States
    DateTime(2020, 3, 12): [
      new EventInfo('Maryland State Leadership Conference',
          'Renaissance Baltimore Harborplace Hotel', true)
    ],
    DateTime(2020, 3, 13): [
      new EventInfo('Maryland State Leadership Conference',
          'Renaissance Baltimore Harborplace Hotel', false)
    ],
    DateTime(2020, 3, 14): [
      new EventInfo('Maryland State Leadership Conference',
          'Renaissance Baltimore Harborplace Hotel', false)
    ],

    //Nationals
    DateTime(2020, 6, 29): [
      new EventInfo('National Leadership Conference',
          'Salt Lake City, Utah (location not determined)', true)
    ],
    DateTime(2020, 6, 30): [
      new EventInfo('National Leadership Conference',
          'Salt Lake City, Utah (location not determined)', false)
    ],
    DateTime(2020, 7, 1): [
      new EventInfo('National Leadership Conference',
          'Salt Lake City, Utah (location not determined)', false)
    ],
    DateTime(2020, 7, 2): [
      new EventInfo('National Leadership Conference',
          'Salt Lake City, Utah (location not determined)', false)
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(),
      drawer: HamburgerMenu(),
      body: Column(
        children: <Widget>[
          TableCalendar(
            calendarController: _calendarController,
            events: _events,
            onDaySelected: (DateTime t, List<dynamic> l) {
              setState(() {
                _events.putIfAbsent(
                    new DateTime(t.year, t.month, t.day), () => []);
                date = new DateTime(t.year, t.month, t.day);
              });
            },
            calendarStyle: CalendarStyle(
              weekendStyle: TextStyle(
                color: Colors.grey,
              ),
              outsideWeekendStyle: TextStyle(
                color: Colors.grey,
              ),
              weekdayStyle: TextStyle(
                color: Colors.black87,
              ),
              outsideStyle: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: _events[date].length,
            itemBuilder: (context, index) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                elevation: 4,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 8),
                      Container(
                        width: 8,
                        height: 85,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 16),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              _events[date][index].name,
                              style: Theme.of(context).textTheme.headline,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              _events[date][index].info,
                              style: Theme.of(context).textTheme.body2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            ButtonBar(
                              children: <Widget>[
                                FlatButton.icon(
                                    color: _events[date][index].buttonColors[0],
                                    icon: Icon(
                                      _events[date][index].buttonIcons[0],
                                      color: Colors.white,
                                    ),
                                    label: Text('RSVP',
                                        style: TextStyle(color: Colors.white)),
                                    onPressed: () {
                                      setState(() {
                                        if (_events[date][index].states[0] ==
                                            1) {
                                          _events[date][index].rsvpForEvent();
                                        }
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    RSVPForm()));
                                      });
                                    }),
                                FlatButton.icon(
                                    color: _events[date][index].buttonColors[1],
                                    icon: Icon(
                                      _events[date][index].buttonIcons[1],
                                      color: Colors.white,
                                    ),
                                    label: Text('CHECK IN',
                                        style: TextStyle(color: Colors.white)),
                                    onPressed: () {
                                      setState(() {
                                        if (_events[date][index].states[1] ==
                                            1) {
                                          // Navigator.push(
                                          //     context,
                                          //     MaterialPageRoute(
                                          //         builder: (context) =>
                                          //             _QRView()));
                                          _events[date][index]
                                              .checkInForEvent();
                                        }
                                      });
                                    }),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}

class EventInfo {
  String name, info;
  bool canRSVP;
  List<int> states; //0 = deactivated, 1 = activated, 2 = finished
  List<Color> buttonColors;
  List<IconData> buttonIcons;
  static final List<Color> colorOptions = [
    Colors.grey,
    Colors.blue,
    Colors.blueAccent
  ];
  static final List<IconData> iconOptions = [
    Icons.remove_circle_outline,
    Icons.check_circle_outline,
    Icons.check_circle
  ];
  EventInfo(String name, String info, bool canRSVP) {
    this.name = name;
    this.info = info;
    this.canRSVP = canRSVP;

    states = [0, 0];
    buttonColors = [Colors.grey, Colors.grey];
    buttonIcons = [Icons.remove_circle_outline, Icons.remove_circle_outline];
    if (canRSVP) {
      states[0] = 1;
      this.update();
    }
  }

  void update() {
    buttonColors[0] = colorOptions[states[0]];
    buttonColors[1] = colorOptions[states[1]];

    buttonIcons[0] = iconOptions[states[0]];
    buttonIcons[1] = iconOptions[states[1]];
  }

  void rsvpForEvent() {
    states[0] = 2;
    states[1] = 1;
    this.update();
  }

  void checkInForEvent() {
    states[1] = 2;

    this.update();
  }
}

class _QRView extends StatefulWidget {
  @override
  _QRViewExampleState createState() => _QRViewExampleState();
}

class _QRViewExampleState extends State<_QRView> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  var qrText = "";
  QRViewController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: QRView(
              key: qrKey,
              onQRViewCreated: _onQRViewCreated,
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Text('Scan result: $qrText'),
            ),
          )
        ],
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        qrText = scanData;
        if (qrText != "") {
          Navigator.of(context).maybePop();
        }
      });
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
