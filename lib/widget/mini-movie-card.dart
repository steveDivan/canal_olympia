import 'package:canal_olympia/screens/movie-details.dart';
import 'package:canal_olympia/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class movieCardMini extends StatefulWidget {
  @override
  movieCardMiniState createState() => movieCardMiniState();
}

class movieCardMiniState extends State<movieCardMini> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return MovieDetails();
                }));
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 280,
            width: 165,
            decoration: BoxDecoration(
              boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(236, 19, 19, 19),
                      blurRadius: 12,
    
                      offset: Offset(0, 5)),
                  BoxShadow(
                      color: Color.fromARGB(236, 19, 19, 19),
                      blurRadius: 12,
    
                      offset: Offset(0,2)),
                ],
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('lib/assets/intro-bg.png')),
                color: const Color.fromRGBO(39, 239, 241, 0.2),
                borderRadius: BorderRadius.circular(14.55),
                border: Border.all(
                    color: const Color.fromRGBO(39, 239, 241, 0.2), width: 0.91)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 23,
                        width: 58,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color.fromRGBO(255, 17, 75, 1),
                              Color.fromRGBO(188, 0, 46, 1)
                            ]),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Center(
                            child: Text(
                          '02H08',
                          style: GoogleFonts.sora(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              color: Colors.white),
                        )),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 115,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 79.800),
                  child: Container(
                    //height: 280,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromRGBO(0, 0, 0, 0),
                              Color.fromRGBO(0, 0, 0, 1)
                            ])),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Paw Patrol',
                              style: GoogleFonts.sora(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24,
                                  color: Colors.transparent),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Paw Patrol',
                              style: GoogleFonts.sora(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 11,
                                  color: Colors.transparent),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Paw Patrol',
                    style: GoogleFonts.sora(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Paw Patrol',
                    style: GoogleFonts.sora(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: mutedText),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
