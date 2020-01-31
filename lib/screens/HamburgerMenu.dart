import 'package:flutter/material.dart';

import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:my_fbla/screens/Login.dart';
import 'package:url_launcher/url_launcher.dart';
import '../sign_in.dart';

class HamburgerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () => showDialog(
              context: context,
              builder: (_) => Material(
                type: MaterialType.transparency,
                child: Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        SizedBox(),
                        Container(
                          child: Text(
                            "",
                            style: TextStyle(color: Colors.black, fontSize: 48),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            RaisedButton(
                                child: Text(
                                  "LOG OUT",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 32,
                                  ),
                                ),
                                color: Color.fromRGBO(227, 34, 34, 1.0),
                                padding: EdgeInsets.all(16),
                                onPressed: () async => {
                                      await googleSignIn
                                          .signOut()
                                          .whenComplete(() {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return Login();
                                            },
                                          ),
                                        );
                                      }),
                                    }),
                            SizedBox(
                              height: 16,
                            ),
                            OutlineButton(
                                child: Text(
                                  "CANCEL",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 32,
                                  ),
                                ),
                                padding: EdgeInsets.all(16),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                                onPressed: () => Navigator.maybePop(context)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: CircleAvatar(
                    backgroundColor: Colors.lightBlueAccent,
                    radius: 50,
                    backgroundImage: NetworkImage(
                      imageURL,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    name,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 23, color: Colors.blueGrey),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Text(
                    email,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 23, color: Colors.blueGrey),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    color: Colors.blueGrey,
                    height: 50,
                    thickness: 1,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: ListView(
              padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
              children: <Widget>[
                ListTile(
                  title: Text(
                    "About FBLA",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      'AboutFBLA',
                      ModalRoute.withName('Home'),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    "Join FBLA",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      'JoinFBLA',
                      ModalRoute.withName('Home'),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    "Calendar",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      'Calendar',
                      ModalRoute.withName('Home'),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    "Local Officer Team",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      'LocalOfficerTeam',
                      ModalRoute.withName('Home'),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    "Competitive Events",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      'CompetitiveEvents',
                      ModalRoute.withName('Home'),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    "Frequently Asked Questions",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      'QAndA',
                      ModalRoute.withName('Home'),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    "Report A Bug",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20,
                    ),
                  ),
                  onTap: () async {
                    const url = 'mailto:pkrishnan219@gmail.com?subject=Bug';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
                ListTile(
                  title: Text(
                    "Display Current QR Code",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      'QRCode',
                      ModalRoute.withName('Home'),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    "Create Event",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      'CreateEvent',
                      ModalRoute.withName('Home'),
                    );
                  },
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(25),
            child: Column(
              children: <Widget>[
                RaisedButton(
                  child: Text(
                    "FBLA WEBSITE",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.blue,
                  elevation: 0,
                  onPressed: () async {
                    const url = 'https://www.fbla-pbl.org/';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SignInButton(
                      Buttons.Facebook,
                      mini: true,
                      shape: CircleBorder(),
                      onPressed: () async {
                        const url =
                            'http://www.facebook.com/FutureBusinessLeaders';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                    SignInButton(
                      Buttons.Twitter,
                      mini: true,
                      shape: CircleBorder(),
                      onPressed: () async {
                        const url = 'http://twitter.com/FBLA_National';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                    SignInButton(
                      Buttons.LinkedIn,
                      mini: true,
                      shape: CircleBorder(),
                      onPressed: () async {
                        const url = 'http://www.linkedin.com/groups?gid=106458';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                    SignInButton(
                      Buttons.Email,
                      mini: true,
                      shape: CircleBorder(),
                      onPressed: () async {
                        const url =
                            'mailto:presidents.rhfbla@gmail.com?subject=';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
