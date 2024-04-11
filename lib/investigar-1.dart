import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

class Investigar1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 28;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // investigar1YTx (1:217)
        width: double.infinity,
        height: 32 * fem,
        child: Image.asset(
          'assets/page-1/images/investigar-1.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
