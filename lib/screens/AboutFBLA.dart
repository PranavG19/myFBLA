import 'package:flutter/material.dart';

import 'BaseAppBar.dart';
import 'HamburgerMenu.dart';

class AboutFBLA extends StatelessWidget {
  // add bullets

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(),
      drawer: HamburgerMenu(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Container(
            margin: EdgeInsets.fromLTRB(10, 16, 10, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Text(
                    "About FBLA",
                    style: Theme.of(context).textTheme.title,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "FBLA is the high school division of Future Business Leaders of America-Phi Beta Lambda, Inc. FBLA helps high school students prepare for careers in business through academic competitions (FBLA Competitive Events), leadership development, and educational programs.",
                ),
                SizedBox(height: 16),
                Text(
                  "Future Business Leaders of America-PhiBeta Lambda, Inc. (FBLA-PBL) is the oldest and largest national organization for students preparing for careers in business. FBLA-PBL prepares students for “real world” professional experiences. Members gain the competitive edge for college and career successes. More than a quarter of a million students participate in this dynamic leadership organization.",
                ),
                SizedBox(height: 16),
                Text(
                  "FBLA-PBL will provide you with:",
                ),
                SizedBox(height: 16),
                Row(
                  children: <Widget>[
                    SizedBox(width: 32),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Travel opportunities"),
                        Text("Challenging competitions"),
                        Text("Scholarships and prizes"),
                        Text("Leadership development"),
                        Text("Community service experience"),
                        Text("Friendship and fun"),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Text(
                  "Join FBLA Today!",
                  style: Theme.of(context).textTheme.subhead,
                ),
                SizedBox(height: 16),
                Text(
                  "FBLA-PBL takes you to major cities throughout the United States, such as Anaheim, Nashville, Orlando, and San Antonio. You will get to know people in your state and across the nation at exciting leadership conferences.",
                ),
                SizedBox(height: 16),
                Text(
                  "Members have the opportunity to compete for awards and recognition on the local, state, and national levels in more than 50 different event categories including website development, marketing, business plan, public speaking, job interview, network design, and many more!",
                ),
                SizedBox(height: 16),
                Text(
                  "Become a leader in your school, state, or country when you become an officer. Win money! Travel! Learn to lead! Develop friendships! Earn recognition! All of these adventures and more await you when you become a member of FBLA-PBL. To become a local member, please fill out and return the form below with your membership dues.",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
