import 'package:flutter/material.dart';

import 'BaseAppBar.dart';
import 'HamburgerMenu.dart';

class Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    path.lineTo(0.0, 30.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(Clipper oldClipper) => false;
}

class LocalOfficerTeam extends StatelessWidget {
  //add bio when clicking on card

  static List<String> names = [
    "Kartik Gupta",
    "Azariah Seblu",
    "Anirudh Karegowdra",
    "Ire Omitowoju",
    "Siri Jale",
    "Jonah Ostroff",
    "Bryce Hu",
    "Wenxi Ye",
    "Julia Liu",
    "Oliver Simpson",
    "Murtaza Syed",
    "Helena Li",
    "Myla Thomas",
    "Sanket Vaja",
    "Naod Dawit",
    "Julian Elguera"
  ];

  static List<String> roles = [
    "President",
    "President",
    "Executive Vice President",
    "Executive Vice President",
    "Chief Operations Officer",
    "Chief Operations Officer",
    "Chief Financial Officer",
    "Chief Financial Officer",
    "VP of Competitive Events",
    "VP of Competitive Events",
    "VP of Competitive Events",
    "VP of Professional Division",
    "VP of Public Relations",
    "VP of Public Relations",
    "VP of Professional Development",
    "VP of Professional Development"
  ];

  static List<String> pictures = [
    "https://static.wixstatic.com/media/5b0e2e_1a0efa148b2142889fe3beb96f689771~mv2_d_2400_3600_s_4_2.png/v1/crop/x_119,y_256,w_2133,h_2140/fill/w_270,h_271,al_c,q_85,usm_0.66_1.00_0.01/Kartik.webp",
    "https://static.wixstatic.com/media/5b0e2e_ccfe84f72abc4d9cb1070403da63aaf8~mv2_d_2400_3600_s_4_2.png/v1/crop/x_101,y_111,w_2187,h_2194/fill/w_270,h_271,al_c,q_85,usm_0.66_1.00_0.01/Azariah%20Seblu.webp",
    "https://static.wixstatic.com/media/5b0e2e_f352905a2d904a0f8c1e9927afdb0adb~mv2_d_2400_3600_s_4_2.png/v1/crop/x_121,y_111,w_2178,h_2188/fill/w_270,h_271,al_c,q_85,usm_0.66_1.00_0.01/Anirudh%20Karegowdra.webp",
    "https://static.wixstatic.com/media/5b0e2e_b7c4dac0c52f41e4b09f4f34d40ce8f5~mv2_d_2400_3600_s_4_2.png/v1/crop/x_111,y_323,w_2178,h_2188/fill/w_270,h_271,al_c,q_85,usm_0.66_1.00_0.01/Ire%20Omitowoju.webp",
    "https://static.wixstatic.com/media/5b0e2e_709c1cad2cb54da795e717e38dbf2e42~mv2_d_2400_3600_s_4_2.png/v1/crop/x_114,y_134,w_2172,h_2245/fill/w_263,h_271,al_c,q_85,usm_0.66_1.00_0.01/Siri%20Jale.webp",
    "https://static.wixstatic.com/media/5b0e2e_66a688b35838443e8edf120b6fecfc58~mv2_d_2400_3600_s_4_2.png/v1/crop/x_114,y_114,w_2172,h_2245/fill/w_263,h_271,al_c,q_85,usm_0.66_1.00_0.01/Jonah%20Ostroff.webp",
    "https://static.wixstatic.com/media/5b0e2e_bb58bfc5442f41369552392b3b649b37~mv2_d_2400_3600_s_4_2.png/v1/crop/x_138,y_128,w_2133,h_2140/fill/w_270,h_271,al_c,q_85,usm_0.66_1.00_0.01/Bryce%20Hu.webp",
    "https://static.wixstatic.com/media/5b0e2e_d00e2c82db1e46e184cc57139552d4b8~mv2_d_2400_3600_s_4_2.png/v1/crop/x_121,y_262,w_2178,h_2188/fill/w_270,h_271,al_c,q_85,usm_0.66_1.00_0.01/Wenxi%20Ye.webp",
    "https://static.wixstatic.com/media/5b0e2e_7c748e99229e451e924fad4afb6e5720~mv2_d_2400_3600_s_4_2.png/v1/crop/x_142,y_222,w_2127,h_2194/fill/w_263,h_271,al_c,q_85,usm_0.66_1.00_0.01/Julia%20Liu.webp",
    "https://static.wixstatic.com/media/5b0e2e_44ae37f932d4486e8736c3ffb6b5bcbd~mv2_d_2400_3600_s_4_2.png/v1/crop/x_114,y_134,w_2172,h_2245/fill/w_263,h_271,al_c,q_85,usm_0.66_1.00_0.01/Oliver%20Simpson.webp",
    "https://static.wixstatic.com/media/5b0e2e_6f34e75f79da4b8085c71cb19e35e597~mv2_d_2400_3600_s_4_2.png/v1/crop/x_111,y_293,w_2187,h_2194/fill/w_270,h_271,al_c,q_85,usm_0.66_1.00_0.01/Murtaza.webp",
    "https://static.wixstatic.com/media/5b0e2e_eb3ade4428ee40afa5e807e5ba4cfb8a~mv2_d_2400_3600_s_4_2.png/v1/crop/x_101,y_344,w_2187,h_2194/fill/w_270,h_271,al_c,q_85,usm_0.66_1.00_0.01/Helena%20Li.webp",
    "https://static.wixstatic.com/media/5b0e2e_585ba763e7cb4b8dbf4ae5c3075a09eb~mv2_d_2400_3600_s_4_2.png/v1/crop/x_121,y_232,w_2118,h_2188/fill/w_263,h_271,al_c,q_85,usm_0.66_1.00_0.01/Myla%20Thomas.webp",
    "https://static.wixstatic.com/media/5b0e2e_e109abbdf2b245dbb207e3f96af03d89~mv2_d_2400_3600_s_4_2.png/v1/crop/x_105,y_306,w_2008,h_2072/fill/w_263,h_271,al_c,q_85,usm_0.66_1.00_0.01/Sanket%20Vaja.webp",
    "https://static.wixstatic.com/media/5b0e2e_13acb6c313e348c3bb60c3cf10cba062~mv2_d_2400_3600_s_4_2.png/v1/crop/x_122,y_289,w_2156,h_2167/fill/w_243,h_244,al_c,q_85,usm_0.66_1.00_0.01/Naod%20Dawit.webp",
    "https://static.wixstatic.com/media/5b0e2e_b8c3769d5a8a4c2bbf1fb771e5003b29~mv2_d_2400_3600_s_4_2.png/v1/crop/x_156,y_178,w_2133,h_2144/fill/w_240,h_241,al_c,q_85,usm_0.66_1.00_0.01/Julian%20Elguera.webp"
  ];

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
                "Your Local Officer Team!",
                style: Theme.of(context).textTheme.title,
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: names.length,
                itemBuilder: (BuildContext ctxt, int index) {
                  return Column(
                    children: <Widget>[
                      Card(
                        elevation: 4,
                        child: Stack(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(pictures[index]),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 45),
                              ],
                            ),
                            Positioned(
                              left: 0.0,
                              bottom: 0.0,
                              child: ClipPath(
                                clipper: Clipper(),
                                child: Container(
                                  color: Colors.white,
                                  padding: EdgeInsets.all(8.0),
                                  height: 130,
                                  width: MediaQuery.of(context).size.width - 40,
                                  child: Column(
                                    children: <Widget>[
                                      SizedBox(height: 32),
                                      Text(
                                        names[index],
                                        style: TextStyle(
                                            fontSize: 36, color: Colors.black),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        roles[index],
                                        style:
                                            Theme.of(context).textTheme.body1,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
