import 'package:flutter/material.dart';

import 'package:firebase_database/firebase_database.dart';

import 'BaseAppBar.dart';
import 'HamburgerMenu.dart';

class JoinFBLA extends StatelessWidget {
  // make "optional" text different color
  // make clicking done go to next form

  final formKey = GlobalKey<FormState>();

  final data = FirebaseDatabase.instance.reference();
  String getData(String num) {
    data.child("calendarEvents").child(num).once().then((DataSnapshot snap) {
      var data = snap.value;
      return data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(),
      drawer: HamburgerMenu(),
      body: Theme(
        data: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.white,
          accentColor: Colors.white,
          scaffoldBackgroundColor: Colors.white,
          textSelectionHandleColor: Colors.black,
          textSelectionColor: Colors.black12,
          cursorColor: Colors.black,
          toggleableActiveColor: Colors.black,
          inputDecorationTheme: InputDecorationTheme(
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black.withOpacity(0.1)),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
            labelStyle: const TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
            child: Form(
              key: formKey,
              child: Column(
                children: <Widget>[
                  Center(
                    child: Text(
                      "Member Sign Up Form",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'First Name',
                    ),
                    validator: (value) {
                      if (value.trim().isEmpty) {
                        return 'First Name is Required';
                      }
                    },
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Last Name',
                    ),
                    validator: (value) {
                      if (value.trim().isEmpty) {
                        return 'Last Name is Required';
                      }
                    },
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Address',
                    ),
                    validator: (value) {
                      if (value.trim().isEmpty) {
                        return 'Address is Required';
                      }
                    },
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'City',
                          ),
                          validator: (value) {
                            if (value.trim().isEmpty) {
                              return 'City is Required';
                            }
                          },
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'State',
                          ),
                          validator: (value) {
                            if (value.trim().isEmpty) {
                              return 'State is Required';
                            }
                          },
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Zip',
                          ),
                          validator: (value) {
                            if (value.trim().isEmpty) {
                              return 'Zip is Required';
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Phone',
                    ),
                    validator: (value) {
                      if (value.trim().isEmpty) {
                        return 'Phone # is Required';
                      }
                    },
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                    ),
                    validator: (value) {
                      if (value.trim().isEmpty) {
                        return 'Email is Required';
                      }
                    },
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Grade',
                    ),
                    validator: (value) {
                      if (value.trim().isEmpty) {
                        return 'Grade is Required';
                      }
                    },
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Gender (Optional)',
                    ),
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'I was Recruted by (Optional)',
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      OutlineButton(
                        highlightedBorderColor: Colors.black,
                        onPressed: () => {getData("1")},
                        child: const Text('Register'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
