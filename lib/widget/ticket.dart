import 'dart:math';

import 'package:canal_olympia/screens/home.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import '../utils/colors.dart';

class Ticket extends StatefulWidget {
  const Ticket({super.key});

  @override
  TicketState createState() => TicketState();
}

class TicketState extends State<Ticket> {
  final _controller = ConfettiController();
  bool _isPlaying = true;

  @override
  void dispose() {
    super.dispose();
    _controller;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
        backgroundColor: backgroundcolor,
        body: SafeArea(
            child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    ConfettiWidget(
                        confettiController: _controller,
                        blastDirection: pi / 2,
                        colors: const [cblue, cred ],
                        gravity: 0.01,
                        emissionFrequency: 0.01,
                        shouldLoop: true,
                      ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                      
                  //     Container(
                  //       decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(15.0),
                  //           color: tshade),
                  //       child: IconButton(
                  //           onPressed: () {
                  //             Navigator.pop(context);
                  //           },
                  //           icon: const Icon(
                  //             Icons.arrow_back,
                  //             color: Colors.white,
                  //           )),
                  //     ),
                  //     Text(
                  //       "Transaction details",
                  //       style: GoogleFonts.lato(
                  //           fontSize: 20,
                  //           fontWeight: FontWeight.bold,
                  //           color: Colors.white),
                  //     ),
                  //     IconButton(
                  //         onPressed: () {},
                  //         icon: Icon(
                  //           Icons.more_horiz,
                  //           color: Colors.black,
                  //         ))
                  //   ],
                  // ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        //color: Colors.white,
                        //border: Border.all(color: tyellow, width: 3.0),
                        //borderRadius: BorderRadius.circular(15.0),
          //               boxShadow: const [
          //   BoxShadow(
          //       color: Color.fromARGB(235, 179, 179, 179),
          //       blurRadius: 10,
          //       offset: Offset(0, 5)),
          //   BoxShadow(
          //       color: Color.fromARGB(235, 134, 134, 134),
          //       blurRadius: 10,
          //       offset: Offset(0,2)),
          // ],
                        image: DecorationImage(
                            image: AssetImage('lib/assets/receipt-bg.png'),
                            fit: BoxFit.fill),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),

                          Image.asset('lib/assets/code.png'),

                          const SizedBox(
                            height: 10,
                          ),

                         Text(
                                'Show this code to the gatekeeper at the cinema',
                                style: GoogleFonts.ibmPlexSans(
                                    fontWeight: FontWeight.w400,
                                    color: mutedText,
                                    fontSize: 16
                                    ),
                                    textAlign: TextAlign.center,
                              ),
 const SizedBox(
                            height: 5,
                          ),
                              const Divider(
                                color: mutedText,
                              ),
                          
                          const SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Expendables 4',
                                style: GoogleFonts.sora(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                    fontSize: 16),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Cinema',
                                  style: GoogleFonts.sora(
                                    fontSize: 12,
                                    color: mutedText,
                                    fontWeight: FontWeight.w400,
                                  )),
                              Text('Bessengue, Douala',
                                  style: GoogleFonts.sora(
                                    fontWeight: FontWeight.w400,
                                      fontSize: 14, color: mutedText)),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Date',
                                  style: GoogleFonts.sora(
                                    fontSize: 12,
                                    color: mutedText,
                                    fontWeight: FontWeight.w400,
                                  )),
                              Text('17 Octobre 2023',
                                  style: GoogleFonts.sora(
                                    fontWeight: FontWeight.w400,
                                      fontSize: 14, color: mutedText)),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Hall',
                                  style: GoogleFonts.sora(
                                    fontSize: 12,
                                    color: mutedText,
                                    fontWeight: FontWeight.w400,
                                  )),
                              Text('6th',
                                  style: GoogleFonts.sora(
                                    fontWeight: FontWeight.w400,
                                      fontSize: 14, color: mutedText)),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Seats',
                                  style: GoogleFonts.sora(
                                    fontSize: 12,
                                    color: mutedText,
                                    fontWeight: FontWeight.w400,
                                  )),
                              Text('10 Row (10,11)',
                                  style: GoogleFonts.sora(
                                     fontWeight: FontWeight.w400,
                                      fontSize: 14, color: mutedText)),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Cost',
                                  style: GoogleFonts.sora(
                                    fontSize: 12,
                                    color: mutedText,
                                    fontWeight: FontWeight.w400,
                                  )),
                              Text('3000 FCFA',
                                  style: GoogleFonts.sora(
                                      fontSize: 14, color: mutedText,
                                      fontWeight: FontWeight.w700
                                      )),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                         
                          SizedBox(
                            height: 80,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 320,
                      height: 65,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                  
                            Container(
                            height: 50,
                            width: 150,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(colors: [
                              Color.fromRGBO(255, 255, 255, 1),
                              Color.fromRGBO(255, 255, 255, 1)
                            ]),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Center(
                            child: Text(
                          'Refunds',
                          style: GoogleFonts.sora(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: mutedText),
                        )),
                      ),
                  
                  
                          Container(
                            height: 50,
                            width: 150,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(colors: [
                              Color.fromRGBO(255, 17, 75, 1),
                              Color.fromRGBO(188, 0, 46, 1)
                            ]),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Center(
                            child: Text(
                          'Download & Share',
                          style: GoogleFonts.sora(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Colors.white),
                        )),
                      ),
                  
                        ],
                      ),
                    ),
                  ),
                ]
                )
                )
                )
                );
  }
}
