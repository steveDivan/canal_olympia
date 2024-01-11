
import 'package:canal_olympia/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class movieTag extends StatelessWidget {
  const movieTag({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 1.82, right: 7.27, bottom: 3.64, left: 7.27),
      width: 65,
      height: 20,
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0.08),
        borderRadius: BorderRadius.circular(8.181)
      ),
      child: Text(
      'Francais',
      style: GoogleFonts.sora(
          fontWeight: FontWeight.w600,
          fontSize: 11,
          color: cpuprple),
    ), 
    );
  }
}
