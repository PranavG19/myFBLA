import 'package:flutter/material.dart';

import 'BaseAppBar.dart';

import 'HamburgerMenu.dart';

class QAndA extends StatelessWidget {
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
                    "Frequently Asked Questions",
                    style: Theme.of(context).textTheme.title,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "What is the difference between FBLA and DECA?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                Text(
                    "In general, FBLA is a business club that has aspects ranging from general business, entrepreneurship, to even technology. DECA is also a business club on campus that focuses on business and marketing. In the past years, FBLA has been a smaller club in comparison to DECA, but we believe this gives us more time to focus on you individually."),
                SizedBox(height: 16),
                Text(
                  "In addition to the competitions side, River Hill High School has a unique projects team, unlike other clubs, that has in the past has worked in the Community Service, American Enterprise, and Partnership with Business areas. Projects provide an excellent opportunity to get involved in River Hill High School and gain leadership skills. However, we do realize that both clubs are great for any student interested in business as they both teach the fundamentals and provide a hands on experience. Some students join both FBLA and DECA and we encourage you to find your right fit as both with provide you with a quality experience.",
                ),
                SizedBox(height: 16),
                Text(
                  "I'm not interested in business. Can I still join?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                Text(
                  "Sure! River Hill High School offers you many opportunities outside of pure business - our competitions span from business to programming and software development, and we offer workshops and opportunities to learn skills that will serve you no matter what career you decide to pursue.",
                ),
                SizedBox(height: 16),
                Text(
                  "Are all competitions tests?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                Text(
                  "Of course not! We get enough of them at River Hill already. While we do offer tests (written competitions), we have oral competitions such as Business Presentation or Parliamentary Procedure, and also technology competitions such as Desktop Application Programming.",
                ),
                SizedBox(height: 16),
                Text(
                  "What kind of activities do you do in FBLA besides competing?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                Text(
                  "Besides competitions, we have exciting projects and workshops, in addition to fun conferences. Besides just being a club where you can gain experience and learn new skills, FBLA is an opportunity to meet new people and network with people from all grades at River Hill, establishing life-long friendships. More than just a club, FBLA is a lifestyle. An FBLAmazing lifestyle!",
                ),
                SizedBox(height: 16),
                Text(
                  "How will FBLA help me learn business?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                Text(
                  "One of the main aspects of our club that we pride ourselves upon is the one-on-one attention we give to our members. Along with the many resources we have hand gathered to help aid our members' success, we also enjoy spending time to ensure everyone is getting the help they need. It is a guarantee that you will be working with some of the most successful competitors as well as the most experienced officers to make sure that each and every member in River Hill High School FBLA will be able to create their own legacy.",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
