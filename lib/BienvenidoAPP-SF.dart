import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

class BienvenidoAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 440;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.fromLTRB(96 * fem, 215 * fem, 80 * fem, 66 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0x7c3b41ca),
          image: DecorationImage(            fit: BoxFit.cover,
            image: AssetImage(
              'assets/images/fondo.iniciar sesión.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 3 * fem, 312 * fem),
              width: 261 * fem,
              height: 114 * fem,
              child: Stack(
                children: [
                  Positioned(
                    // image9viz (12:211)
                    left: 0 * fem,
                    top: 56 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 261 * fem,
                        height: 58 * fem,
                      ),
                    ),
                  ),
                  Positioned(
                    // image10qb4 (12:212)
                    child: Align(
                      child: SizedBox(
                        width: 280 * fem,
                        height: 258 * fem,
                        child: Image.asset(
                          'assets/images/logo2.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupo39yZX4 (5Crf7SLbFrhPiy3nsHo39Y)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 20 * fem, 52 * fem),
              width: 234 * fem,
              height: 58 * fem,
              decoration: BoxDecoration(
                color: Color(0xff1a1d85),
                borderRadius: BorderRadius.circular(40 * fem),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xccffffff),
                    offset: Offset(4 * fem, 4 * fem),
                    blurRadius: 3 * fem,
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'Iniciar sesión',
                  style: GoogleFonts.lato(
                    //'Mulish',
                    fontSize: 22 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.255 * ffem / fem,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
            Container(
              // notienesunacuentaregstrateQGn (12:208)
              margin: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 0 * fem),
              child: RichText(
                text: TextSpan(
                  style: GoogleFonts.lato(
                    //'Nunito',
                    fontSize: 16 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.3639999628 * ffem / fem,
                    decoration: TextDecoration.underline,
                    color: Color(0xffffffff),
                    decorationColor: Color(0xffffffff),
                  ),
                  children: [
                    TextSpan(
                      text: '¿No tienes una cuenta? ',
                      style: GoogleFonts.lato(
                        //'Noto Sans',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.3625 * ffem / fem,
                        decoration: TextDecoration.underline,
                        color: Color(0xffffffff),
                        decorationColor: Color(0xffffffff),
                      ),
                    ),
                    TextSpan(
                      text: 'Regístrate',
                      style: GoogleFonts.lato(
                        //'Noto Sans',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w900,
                        height: 1.3625 * ffem / fem,
                        decoration: TextDecoration.underline,
                        color: Color(0xffd9d9d9),
                        decorationColor: Color(0xffd9d9d9),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
