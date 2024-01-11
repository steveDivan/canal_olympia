import 'package:canal_olympia/screens/seats.dart';
import 'package:canal_olympia/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieDetails extends StatefulWidget {
  @override
  MovieDetailsState createState() => MovieDetailsState();
}

class MovieDetailsState extends State<MovieDetails>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Scaffold(
          backgroundColor: backgroundcolor,
          appBar: AppBar(
            foregroundColor: Colors.white,
            automaticallyImplyLeading: true,
            centerTitle: true,
            backgroundColor: cblue,
            title: Text(
              'Epxandables 4',
              style: GoogleFonts.sora(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 18),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(40),
              child: Column(
                children: [
                  TabBar(
                    controller: _tabController,
                    indicatorColor: cred,
                    unselectedLabelColor: mutedText,
                    labelColor: cred,
                    tabs: [
                      Tab(
                        text: 'About',
                      ),
                      Tab(
                        text: 'Sessions',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 350,
                          height: 200,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                              borderRadius: BorderRadius.circular(16)),
                          child: Center(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: cred.withOpacity(0.8)),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.play_arrow,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  top: 12, left: 16, bottom: 12, right: 16),
                              height: 72,
                              width: 187.5,
                              color: backgroundcolor,
                              child: Column(
                                children: [
                                  Text(
                                    "8.3",
                                    style: GoogleFonts.sora(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "IMDB",
                                    style: GoogleFonts.sora(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: mutedText),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  top: 12, left: 16, bottom: 12, right: 16),
                              height: 72,
                              width: 187.5,
                              color: backgroundcolor,
                              child: Column(
                                children: [
                                  Text(
                                    "7.9",
                                    style: GoogleFonts.sora(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "Kinopoisk",
                                    style: GoogleFonts.sora(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: mutedText),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: aboutTab(tabController: _tabController),
                        )
                      ],
                    ),

                    //secon tab
                    Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 75,
                          width: 375,
                          color: backgroundcolor,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.calendar_month_rounded,
                                    color: mutedText,
                                  ),
                                  Text(
                                    'Oct,17',
                                    style: GoogleFonts.sora(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.timer,
                                    color: mutedText,
                                  ),
                                  Text(
                                    'Time',
                                    style: GoogleFonts.sora(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.theater_comedy,
                                    color: mutedText,
                                  ),
                                  Text(
                                    'By Room',
                                    style: GoogleFonts.sora(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: Colors.white),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 30,
                          width: 375,
                          padding: EdgeInsets.only(
                              top: 8, right: 16, bottom: 8, left: 16),
                          color: Color.fromRGBO(37, 53, 84, 1),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Time',
                                style: GoogleFonts.sora(
                                    color: mutedText,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                'Pre.first Prev',
                                style: GoogleFonts.sora(
                                    color: mutedText,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                'Stand',
                                style: GoogleFonts.sora(
                                    color: mutedText,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                'Child',
                                style: GoogleFonts.sora(
                                    color: mutedText,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: ListView.builder(
                          itemCount: 15,
                          itemBuilder: (context, index) {
                            return movieSession();
                          },
                        ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class movieSession extends StatelessWidget {
  const movieSession({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
         Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return Seats();
                }));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    '11:00',
                    style: GoogleFonts.sora(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.white),
                  )
                ],
              ),const SizedBox(height: 5,),
              Row(
                children: [
                  Text(
                    'VF',
                    style: GoogleFonts.sora(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: mutedText),
                  )
                ],
              ),
              const SizedBox(height: 20,),
            ],
          ),
    
          
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Bessengue,Douala',
                    style: GoogleFonts.sora(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.white),
                  )
                ],
              ),const SizedBox(height: 5,),
              Row(
                children: [
                  Text(
                    '7.000 Frs',
                    style: GoogleFonts.sora(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.white),
                  )
                ],
              ),
               const SizedBox(height: 20,),
            ],
          )
        ],
      ),
    );
  }
}

class aboutTab extends StatelessWidget {
  const aboutTab({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            RichText(
              text: TextSpan(
                  style: GoogleFonts.sora(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.white),
                  text: """
When the Riddler, a sadistic serial killer, 
begins murdering key political figures in Gotham, 
Batman is forced to investigate the city's hidden 
corruption and question his family's involvement."""),
              textAlign: TextAlign.justify,
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Certificate',
                  style: GoogleFonts.sora(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: mutedText),
                ),
                Text(
                  '16+',
                  style: GoogleFonts.sora(
                      fontSize: 14,
                      fontWeight: FontWeight.w100,
                      color: mutedText),
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Runtime',
                  style: GoogleFonts.sora(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: mutedText),
                ),
                Text(
                  '02:56',
                  style: GoogleFonts.sora(
                      fontSize: 14,
                      fontWeight: FontWeight.w100,
                      color: mutedText),
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Release',
                  style: GoogleFonts.sora(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: mutedText),
                ),
                Text(
                  '2023',
                  style: GoogleFonts.sora(
                      fontSize: 14,
                      fontWeight: FontWeight.w100,
                      color: mutedText),
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Genre',
                  style: GoogleFonts.sora(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: mutedText),
                ),
                Text(
                  'Action,Crime,Drama',
                  style: GoogleFonts.sora(
                      fontSize: 14,
                      fontWeight: FontWeight.w100,
                      color: mutedText),
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Director',
                  style: GoogleFonts.sora(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: mutedText),
                ),
                Text(
                  'Matt Reeves',
                  style: GoogleFonts.sora(
                      fontSize: 14,
                      fontWeight: FontWeight.w100,
                      color: mutedText),
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cast',
                  style: GoogleFonts.sora(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: mutedText),
                ),
                Text(
                  '16+',
                  style: GoogleFonts.sora(
                      fontSize: 14,
                      fontWeight: FontWeight.w100,
                      color: mutedText),
                )
              ],
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 35),
          child: Container(
            height: 88,
            width: 375,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Color.fromRGBO(2, 32, 128, 0.5),
            ),
            child: GestureDetector(
              onTap: () {
                _tabController.animateTo(1 , curve: Curves.easeInBack);
              },
              child: Container(
                decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [
                      Color.fromRGBO(255, 17, 75, 1),
                      Color.fromRGBO(188, 0, 46, 1)
                    ]),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Center(
                    child: Text(
                  'Select Session',
                  style: GoogleFonts.sora(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Colors.white),
                )),
              ),
            ),
          ),
        )
      ],
    );
  }
}
