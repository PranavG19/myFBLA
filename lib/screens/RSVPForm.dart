import 'package:flutter/material.dart';

import 'BaseAppBar.dart';
import 'HamburgerMenu.dart';

import '../sign_in.dart';

class RSVPForm extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

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
                      "RSVP Form",
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
                    initialValue: name,
                    validator: (value) {
                      if (value.trim().isEmpty) {
                        return 'First Name is Required';
                      }
                    },
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                    ),
                    initialValue: email,
                    validator: (value) {
                      if (value.trim().isEmpty) {
                        return 'Email is Required';
                      }
                    },
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Address',
                    ),
                    initialValue: "13200 Clarksville Pike",
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
                          initialValue: "Highland",
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
                          initialValue: "MD",
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
                          initialValue: "20777",
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
                      labelText: 'Alergies (Leave Blank if None)',
                    ),
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Preffered Roommate',
                    ),
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Parent Contact Information (Required)',
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      OutlineButton(
                        highlightedBorderColor: Colors.black,
                        onPressed: () => {Navigator.pop(context)},
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
