import 'package:canal_olympia/screens/intro.dart';
import 'package:canal_olympia/utils/circle_painter.dart';
import 'package:canal_olympia/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math show sin, pi, sqrt;

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController rippleController;
  late AnimationController ScaleController;

  late Animation<double> rippleAnimation;
  late Animation<double> ScaleAnimation;

  @override
  void dispose() {
    // TODO: implement dispose
    rippleController.dispose();
    ScaleController.dispose();
    super.dispose();
  }

  double boxHeight = 1;
  double boxWidth = 1;

  void expandBox() {
    setState(() {
      boxHeight = 923;
      boxWidth = 923;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cred,
      body:  Center(
          child: Image.asset(
            'lib/assets/logo.jpeg',
            height: 300,
            width: 150,
          ),
        
      ),
    );
    // return GestureDetector(
    //   onTap: () {
    //     expandBox();
    //   },
    //   child: Scaffold(
    //     body: Center(
    //         child: ClipOval(
    //       //borderRadius: BorderRadius.circular(50),
    //       child: AnimatedContainer(
    //         decoration: BoxDecoration(
    //           borderRadius: BorderRadius.circular(100),
    //           color: cred,
    //         ),
    //         duration: Duration(seconds: 1),
    //         height: boxHeight,
    //         width: boxWidth,
    //         alignment: Alignment.center,
    //         curve: Curves.easeIn,
    //       ),
    //     )),
    //   ),
    // );
  }

  @override
  void initState() {
    super.initState();
     Future.delayed(const Duration(seconds: 2), () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return Intro();
                }));
              });
  }
}
