import 'package:canal_olympia/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'tag.dart';

class movieCard extends StatefulWidget {
  @override
  movieCardState createState() => movieCardState();
}

class movieCardState extends State<movieCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 449.09,
      width: 300,
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(236, 19, 19, 19),
                blurRadius: 10,
                offset: Offset(0, 5)),
            BoxShadow(
                color: Color.fromARGB(236, 19, 19, 19),
                blurRadius: 10,
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
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, 0.6),
                    borderRadius: BorderRadius.circular(45)
                  ),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.volume_up_rounded,
                        color: Colors.white,
                      )),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 110),
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
          Padding(
            padding: const EdgeInsets.only(top: 98.18),
            child: Container(
              //height: 449.09,
              //padding: EdgeInsets.only(top: 167.27, left: 14.55, right: 14.55, bottom: 14.55),
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14.55),
                  gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(0, 0, 0, 0),
                        Color.fromRGBO(0, 0, 0, 1)
                      ])),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
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
                              color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'AntoineDaniel',
                          style: GoogleFonts.sora(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: cgrey),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'lorem ipsum dolor amet',
                          style: GoogleFonts.sora(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: cgrey),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        movieTag(),
                        const SizedBox(
                          width: 10,
                        ),
                        movieTag(),
                        const SizedBox(
                          width: 10,
                        ),
                        movieTag()
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
