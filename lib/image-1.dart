import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

class image1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 365;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // image1vDL (1:163)
        width: double.infinity,
        height: 193 * fem,
        child: Image.asset(
          'assets/page-1/images/image-1.png',
        ),
      ),
    );
  }
}
