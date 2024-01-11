import 'package:canal_olympia/screens/home.dart';
import 'package:canal_olympia/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Intro extends StatefulWidget {
  @override
  IntroState createState() => IntroState();
}

class IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('lib/assets/intro-bg.png')
            )
            )
            ),
            GestureDetector(
              onTap: () {
                 Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return HomeScreen();
                        },
                      ));
              },
              child: Padding(
                  padding: const EdgeInsets.only(top: 285),
                  child: Container(
                    //height: MediaQuery.of(context).siz,
                   // width: 375,
                    decoration: BoxDecoration(
                      gradient:const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                       Color.fromRGBO(255, 255, 255, 0),
                       Color.fromRGBO(10, 20, 69, 0.56),
                       Color.fromRGBO(0, 20, 69, 1)
                      ]),
                      
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 50,
                          width: 287,
                          decoration: BoxDecoration(
                            
                            gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(255, 17, 75, 1),
                                Color.fromRGBO(188, 0, 46, 1)
                              ]
                            ),
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Center(
                            child: Text('Commencer' , style: GoogleFonts.sora(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: Colors.white
                            ),)
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
            )
        ]
      ),
    );
  }
}
