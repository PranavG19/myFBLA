import 'package:flutter/material.dart';

import 'BaseAppBar.dart';
import 'HamburgerMenu.dart';

class QRCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(),
      drawer: HamburgerMenu(),
      body: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                "Current QR Code",
                style: Theme.of(context).textTheme.title,
              ),
            ),
            Center(
              child: Text(
                "(04:37 remaining)",
                style: Theme.of(context).textTheme.title,
              ),
            ),
            SizedBox(height: 32),
            Card(
              elevation: 6,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/QR_code_for_mobile_English_Wikipedia.svg/1200px-QR_code_for_mobile_English_Wikipedia.svg.png"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
