import 'package:flutter/material.dart';

import 'BaseAppBar.dart';
import 'HamburgerMenu.dart';

class CreateEvent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

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
                      "Create Event",
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
                      labelText: 'Name of Event',
                    ),
                    validator: (value) {
                      if (value.trim().isEmpty) {
                        return 'Name of Event is Required';
                      }
                    },
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Date (dd/mm/yyyy)',
                    ),
                    validator: (value) {
                      if (value.trim().isEmpty) {
                        return 'Date is Required';
                      }
                    },
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Location',
                    ),
                    validator: (value) {
                      if (value.trim().isEmpty) {
                        return 'Location is Required';
                      }
                    },
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Open? (y or n)',
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      OutlineButton(
                        highlightedBorderColor: Colors.black,
                        onPressed: () => {Navigator.pop(context)},
                        child: const Text('Add Form Field'),
                      ),
                      OutlineButton(
                        highlightedBorderColor: Colors.black,
                        onPressed: () => {Navigator.pop(context)},
                        child: const Text('Create'),
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
