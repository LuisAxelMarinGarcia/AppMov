import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

class image2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 95;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // image2wu8 (1:164)
        width: double.infinity,
        height: 208 * fem,
        child: Image.asset(
          'assets/page-1/images/image-2.png',
        ),
      ),
    );
  }
}
