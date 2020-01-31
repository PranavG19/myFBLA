import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'BaseAppBar.dart';
import 'HamburgerMenu.dart';

class CompetitiveEvents extends StatefulWidget {
  // fix search engine

  static List<String> eventNames = [
    "3-D Animation",
    "Accounting I",
    "Accounting II",
    "Advertising",
    "Agribusiness ",
    "American Enterprise Project",
    "Banking & Financial Systems",
    "Broadcast Journalism",
    "Business Calculations",
    "Business Communication (FBLA)",
    "Business Ethics (FBLA) ",
    "Business Financial Plan",
    "Business Law (FBLA)",
    "Business Plan",
    "Client Service (FBLA)",
    "Coding & Programming",
    "Community Service Project (FBLA)",
    "Computer Applications (FBLA)",
    "Computer Game & Simulation Programming",
    "Computer Problem Solving",
    "Cyber Security (FBLA)",
    "Database Design & Applications",
    "Digital Video Production",
    "E-business",
    "Economics",
    "Electronic Career Portfolio",
    "Emerging Business Issues (FBLA)",
    "Entrepreneurship",
    "Future Business Leader",
    "Global Business",
    "Graphic Design",
    "Health Care Administration",
    "Help Desk (FBLA)",
    "Hospitality Management (FBLA)",
    "Impromptu Speaking (FBLA)",
    "Insurance & Risk Management",
    "Introduction to Business",
    "Introduction to Business Communication",
    "Introduction to Business Presentation",
    "Introduction to Business Procedures",
    "Introduction to FBLA",
    "Introduction to Financial Math",
    "Introduction to Information Technology",
    "Introduction to Parliamentary Procedure",
    "Introduction to Public Speaking",
    "Job Interview (FBLA)",
    "Journalism",
    "LifeSmarts",
    "Local Chapter Annual Business Report (FBLA)",
    "Management Decision Making",
    "Management Information Systems",
    "Marketing",
    "Mobile Application Development (FBLA)",
    "Network Design (FBLA)",
    "Networking Concepts (FBLA)",
    "Organizational Leadership",
    "Parliamentary Procedure (FBLA)",
    "Partnership with Business Project ",
    "Personal Finance (FBLA)",
    "Political Science",
    "Public Service Announcement",
    "Public Speaking (FBLA)",
    "Publication Design",
    "Sales Presentation (FBLA)",
    "Securities & Investments",
    "Social Media Campaign",
    "Sports & Entertainment Management",
    "Spreadsheet Applications",
    "Virtual Business Finance Challenge",
    "Virtual Business Management Challenge",
    "Website Design (FBLA)",
    "Word Processing",
  ];

  static List<String> category = [
    "Prejudged Projects & Presentation",
    "Objective Test",
    "Objective Test",
    "Objective Test",
    "Objective Test",
    "Prejudged Reports & Presentation",
    "Collaborative Objective Test & Team Performance (Role Play)",
    "Presentation with Equipment",
    "Objective Test",
    "Objective Test",
    "Presentation without Equipment",
    "Prejudged Reports & Presentation",
    "Objective Test",
    "Prejudged Reports & Presentation",
    "Presentation without Equipment",
    "Demonstration",
    "Prejudged Reports & Presentation",
    "Production & Objective Test",
    "Demonstration",
    "Objective Test",
    "Objective Test",
    "Production & Objective Test",
    "Prejudged Projects & Presentation",
    "Demonstration",
    "Objective Test",
    "Presentation with Equipment",
    "Presentation without Equipment",
    "Collaborative Objective Test & Team Performance (Role Play)",
    "Interview",
    "Collaborative Objective Test & Team Performance (Role Play)",
    "Presentation with Equipment",
    "Objective Test",
    "Objective Test & Role Play",
    "Collaborative Objective Test & Team Performance (Role Play)",
    "Speech",
    "Objective Test",
    "Objective Test",
    "Objective Test",
    "Presentation with Equipment",
    "Objective Test",
    "Objective Test",
    "Objective Test",
    "Objective Test",
    "Objective Test",
    "Speech",
    "Interview",
    "Objective Test",
    "Team Performance",
    "Prejudged Reports & Presentation",
    "Collaborative Objective Test & Team Performance (Role Play)",
    "Collaborative Objective Test & Team Performance (Role Play)",
    "Collaborative Objective Test & Team Performance (Role Play)",
    "Demonstration",
    "Collaborative Objective Test & Team Performance (Role Play)",
    "Objective Test",
    "Objective Test",
    "Objective Test & Role Play",
    "Prejudged Reports & Presentation",
    "Objective Test",
    "Objective Test",
    "Presentation with Equipment",
    "Speech",
    "Presentation with Equipment",
    "Presentation with Equipment",
    "Objective Test",
    "Presentation with Equipment",
    "Collaborative Objective Test & Team Performance (Role Play)",
    "Production & Objective Test",
    "Team Performance",
    "Team Performance",
    "Demonstration",
    "Production & Objective Test"
  ];

  static List<String> type = [
    "Individual, Team",
    "Individual",
    "Individual",
    "Individual",
    "Individual",
    "Chapter",
    "Individual, Team",
    "Individual, Team",
    "Individual",
    "Individual",
    "Individual, Team",
    "Individual, Team",
    "Individual",
    "Individual, Team",
    "Individual",
    "Individual",
    "Chapter",
    "Individual",
    "Individual, Team",
    "Individual",
    "Individual",
    "Individual",
    "Individual, Team",
    "Individual, Team",
    "Individual",
    "Individual",
    "Individual, Team",
    "Individual, Team",
    "Individual",
    "Individual, Team",
    "Individual, Team",
    "Individual",
    "Individual",
    "Individual, Team",
    "Individual",
    "Individual",
    "Individual",
    "Individual",
    "Individual, Team",
    "Individual",
    "Individual",
    "Individual",
    "Individual",
    "Individual",
    "Individual",
    "Individual",
    "Individual",
    "Team",
    "Chapter",
    "Individual, Team",
    "Individual, Team",
    "Individual, Team",
    "Individual, Team",
    "Individual, Team",
    "Individual",
    "Individual",
    "Team",
    "Chapter",
    "Individual",
    "Individual",
    "Individual, Team",
    "Individual",
    "Individual, Team",
    "Individual",
    "Individual",
    "Individual, Team",
    "Individual, Team",
    "Individual",
    "Individual, Team",
    "Individual, Team",
    "Individual, Team",
    "Individual",
  ];

  static List<String> links = [
    "https://www.fbla-pbl.org/competitive-event/3-d-animation/",
    "https://www.fbla-pbl.org/competitive-event/accounting-i/",
    "https://www.fbla-pbl.org/competitive-event/accounting-ii/",
    "https://www.fbla-pbl.org/competitive-event/advertising/",
    "https://www.fbla-pbl.org/competitive-event/agribusiness/",
    "https://www.fbla-pbl.org/competitive-event/american-enterprise-project/",
    "https://www.fbla-pbl.org/competitive-event/banking-financial-systems/",
    "https://www.fbla-pbl.org/competitive-event/broadcast-journalism/",
    "https://www.fbla-pbl.org/competitive-event/business-calculations/",
    "https://www.fbla-pbl.org/competitive-event/business-communication-fbla/",
    "https://www.fbla-pbl.org/competitive-event/business-ethics-fbla/",
    "https://www.fbla-pbl.org/competitive-event/business-financial-plan/",
    "https://www.fbla-pbl.org/competitive-event/business-law-fbla/",
    "https://www.fbla-pbl.org/competitive-event/business-plan/",
    "https://www.fbla-pbl.org/competitive-event/client-service-fbla/",
    "https://www.fbla-pbl.org/competitive-event/coding-programming/",
    "https://www.fbla-pbl.org/competitive-event/community-service-project-fbla/",
    "https://www.fbla-pbl.org/competitive-event/computer-applications-fbla/",
    "https://www.fbla-pbl.org/competitive-event/computer-game-simulation-programming/",
    "https://www.fbla-pbl.org/competitive-event/computer-problem-solving/",
    "https://www.fbla-pbl.org/competitive-event/cyber-security-fbla/",
    "https://www.fbla-pbl.org/competitive-event/database-design-applications/",
    "https://www.fbla-pbl.org/competitive-event/digital-video-production/",
    "https://www.fbla-pbl.org/competitive-event/e-business/",
    "https://www.fbla-pbl.org/competitive-event/economics/",
    "https://www.fbla-pbl.org/competitive-event/electronic-career-portfolio/",
    "https://www.fbla-pbl.org/competitive-event/emerging-business-issues-fbla/",
    "https://www.fbla-pbl.org/competitive-event/entrepreneurship/",
    "https://www.fbla-pbl.org/competitive-event/future-business-leader/",
    "https://www.fbla-pbl.org/competitive-event/global-business/",
    "https://www.fbla-pbl.org/competitive-event/graphic-design/",
    "https://www.fbla-pbl.org/competitive-event/health-care-administration/",
    "https://www.fbla-pbl.org/competitive-event/help-desk-fbla/",
    "https://www.fbla-pbl.org/competitive-event/hospitality-management-fbla/",
    "https://www.fbla-pbl.org/competitive-event/impromptu-speaking-fbla/",
    "https://www.fbla-pbl.org/competitive-event/insurance-risk-management/",
    "https://www.fbla-pbl.org/competitive-event/introduction-to-business/",
    "https://www.fbla-pbl.org/competitive-event/introduction-to-business-communication/",
    "https://www.fbla-pbl.org/competitive-event/introduction-to-business-presentation/",
    "https://www.fbla-pbl.org/competitive-event/introduction-to-business-procedures/",
    "https://www.fbla-pbl.org/competitive-event/introduction-to-fbla/",
    "https://www.fbla-pbl.org/competitive-event/introduction-to-financial-math/",
    "https://www.fbla-pbl.org/competitive-event/introduction-to-information-technology/",
    "https://www.fbla-pbl.org/competitive-event/introduction-to-parliamentary-procedure/",
    "https://www.fbla-pbl.org/competitive-event/introduction-to-public-speaking/",
    "https://www.fbla-pbl.org/competitive-event/job-interview-fbla/",
    "https://www.fbla-pbl.org/competitive-event/journalism/",
    "https://www.fbla-pbl.org/competitive-event/lifesmarts/",
    "https://www.fbla-pbl.org/competitive-event/local-chapter-annual-business-report-fbla/",
    "https://www.fbla-pbl.org/competitive-event/management-decision-making/",
    "https://www.fbla-pbl.org/competitive-event/management-information-systems/",
    "https://www.fbla-pbl.org/competitive-event/marketing/",
    "https://www.fbla-pbl.org/competitive-event/mobile-application-development-fbla/",
    "https://www.fbla-pbl.org/competitive-event/network-design-fbla/",
    "https://www.fbla-pbl.org/competitive-event/networking-concepts-fbla/",
    "https://www.fbla-pbl.org/competitive-event/organizational-leadership/",
    "https://www.fbla-pbl.org/competitive-event/parliamentary-procedure-fbla/",
    "https://www.fbla-pbl.org/competitive-event/partnership-with-business-project/",
    "https://www.fbla-pbl.org/competitive-event/personal-finance-fbla/",
    "https://www.fbla-pbl.org/competitive-event/political-science/",
    "https://www.fbla-pbl.org/competitive-event/public-service-announcement/",
    "https://www.fbla-pbl.org/competitive-event/public-speaking-fbla/",
    "https://www.fbla-pbl.org/competitive-event/publication-design/",
    "https://www.fbla-pbl.org/competitive-event/sales-presentation-fbla/",
    "https://www.fbla-pbl.org/competitive-event/securities-investments/",
    "https://www.fbla-pbl.org/competitive-event/social-media-campaign/",
    "https://www.fbla-pbl.org/competitive-event/sports-entertainment-management/",
    "https://www.fbla-pbl.org/competitive-event/spreadsheet-applications/",
    "https://www.fbla-pbl.org/competitive-event/virtual-business-finance-challenge/",
    "https://www.fbla-pbl.org/competitive-event/virtual-business-management-challenge/",
    "https://www.fbla-pbl.org/competitive-event/website-design-fbla/",
    "https://www.fbla-pbl.org/competitive-event/word-processing/"
  ];

  static List<String> events = List<String>();

  @override
  _CompetitiveEventsState createState() => _CompetitiveEventsState();
}

class _CompetitiveEventsState extends State<CompetitiveEvents> {
  TextEditingController editingController = TextEditingController();

  void filterSearchResults(String query) {
    List<String> dummySearchList = List<String>();
    dummySearchList.addAll(CompetitiveEvents.eventNames);
    if (query.isNotEmpty) {
      List<String> dummyListData = List<String>();
      dummySearchList.forEach((item) {
        if (item.contains(query)) {
          dummyListData.add(item);
        }
      });
      setState(() {
        CompetitiveEvents.events.clear();
        CompetitiveEvents.events.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        CompetitiveEvents.events.clear();
        CompetitiveEvents.events.addAll(CompetitiveEvents.eventNames);
      });
    }
  }

  void initState() {
    CompetitiveEvents.events.addAll(CompetitiveEvents.eventNames);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(),
      drawer: HamburgerMenu(),
      body: Column(
        children: <Widget>[
          SizedBox(height: 16),
          Text(
            "List of Competitive Events",
            style: Theme.of(context).textTheme.title,
          ),
          SizedBox(height: 16),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              onChanged: (value) {
                filterSearchResults(value);
              },
              controller: editingController,
              decoration: InputDecoration(
                  labelText: "Search",
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0)))),
            ),
          ),
          SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: CompetitiveEvents.events.length,
              itemBuilder: (BuildContext ctxt, int index) {
                return Container(
                  margin: EdgeInsets.fromLTRB(8, 0, 8, 8),
                  child: GestureDetector(
                    onTap: () async {
                      String url = CompetitiveEvents.links[index];
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Card(
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
                              height: 60,
                              color: Colors.blue,
                            ),
                            SizedBox(width: 16),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    CompetitiveEvents.events[index],
                                    style: Theme.of(context).textTheme.headline,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    "Category: " +
                                        CompetitiveEvents.category[index],
                                    style: Theme.of(context).textTheme.body2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    "Type: " + CompetitiveEvents.type[index],
                                    style: Theme.of(context).textTheme.body2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
