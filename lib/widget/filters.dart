import 'package:canal_olympia/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class filters extends StatelessWidget {
  bool isSelected = false;
  String title =" ";

  filters({super.key, required this.isSelected , required this.title});

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? Container(
            width: 200,
            height: 45,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(90.0)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  title,
                  style: GoogleFonts.sora(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ))
              ],
            ),
          )
        : Container(
            width: 200,
            height: 45,
            decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.08),
                borderRadius: BorderRadius.circular(90.0)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  title,
                  style: GoogleFonts.sora(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ))
              ],
            ),
          );
  }
}
