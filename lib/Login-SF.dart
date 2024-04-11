import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';


class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 440;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // informacindeappgEi (1:133)
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xfff5f5f8),
          boxShadow: [
            BoxShadow(
              color: Color(0x3f000000),
              offset: Offset(0 * fem, 4 * fem),
              blurRadius: 2 * fem,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupikztm1G (UjnZSRSTi5Yssi2fP5ikZt)
              padding:
                  EdgeInsets.fromLTRB(14 * fem, 17 * fem, 23 * fem, 12 * fem),
              width: double.infinity,
              height: 77 * fem,
              decoration: BoxDecoration(
                color: Color(0xff1a1d85),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupgbkcdZG (UjnZhR1UngHkg2BPZ2GbKc)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 13 * fem, 0 * fem),
                    width: 53 * fem,
                    height: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          // rectangle23kNz (1:147)
                          left: 9 * fem,
                          top: 5 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 35 * fem,
                              height: 33 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffd9d9d9),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // image14Smc (1:162)
                          left: 0 * fem,
                          top: 100 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 100 * fem,
                              height: 500 * fem,
                              child: Image.asset(
                                'assets/page-1/images/image-14-DoL.png',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // coincraze9g2 (1:146)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 101 * fem, 1 * fem),
                    child: Text(
                      'COIN CRAZE',
                      style: GoogleFonts.lato(
                        fontSize: 24 * ffem,
                        fontWeight: FontWeight.w900,
                        height: 1.2 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupivcnr4e (UjnZokAGMZ3dmQ2BiNivcn)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 16 * fem, 15 * fem, 15 * fem),
                    width: 26 * fem,
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // rectangle20rTx (1:143)
                          width: double.infinity,
                          height: 3 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffd9d9d9),
                          ),
                        ),
                        SizedBox(
                          height: 4 * fem,
                        ),
                        Container(
                          // rectangle21mqp (1:144)
                          width: double.infinity,
                          height: 3 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffd9d9d9),
                          ),
                        ),
                        SizedBox(
                          height: 4 * fem,
                        ),
                        Container(
                          // rectangle227en (1:145)
                          width: double.infinity,
                          height: 3 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffd9d9d9),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // mensdx (1:142)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 1 * fem, 0 * fem, 0 * fem),
                    child: Text(
                      'Menú',
                      style: GoogleFonts.lato(
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogrouprywwzia (Ujnb2Hy3iE8qK5g2eEryWW)
              padding:
                  EdgeInsets.fromLTRB(34 * fem, 20 * fem, 35 * fem, 25 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogrouprkriKkr (Ujna5a3EGjwLVqdB7krkri)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 15 * fem),
                    width: double.infinity,
                    height: 136 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupmrpxqjC (UjnaFQ6BktXtWZAg3xmrPx)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 13 * fem, 0 * fem),
                          width: 247 * fem,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff461f93)),
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(7 * fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3f000000),
                                offset: Offset(0 * fem, 4 * fem),
                                blurRadius: 2 * fem,
                              ),
                            ],
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                // estaaplicacinestdiseadaparaayu (1:148)
                                left: 11 * fem,
                                top: 49 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 225 * fem,
                                    height: 82 * fem,
                                    child: Text(
                                      'Esta aplicación está diseñada para ayudarte a controlar tus gastos y mejorar tu salud financiera. Perfecta para estudiantes, jóvenes profesionales y familias.',
                                      style: GoogleFonts.lato(
                                        //'Noto Sans',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w300,
                                        height: 1.3625 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // bienvenidoalaappdegestindedato (1:149)
                                left: 14 * fem,
                                top: 13 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 204 * fem,
                                    height: 46 * fem,
                                    child: Text(
                                      'Bienvenido a la App de Gestión de Datos.\n\n',
                                      style: GoogleFonts.lato(
                                        //'Mulish',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w900,
                                        height: 1.255 * ffem / fem,
                                        color: Color(0xff95169e),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // image7Nm4 (1:161)
                          width: 111 * fem,
                          height: 136 * fem,
                          child: Image.asset(
                            'assets/page-1/images/image-7.png',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupqmwvKwC (UjnaPK2fiUyjsmyAkeqmWv)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 16 * fem),
                    width: double.infinity,
                    height: 232 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // rectangle19FK4 (1:134)
                          left: 1 * fem,
                          top: 0 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 370 * fem,
                              height: 123 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7 * fem),
                                  border: Border.all(color: Color(0xff461f93)),
                                  color: Color(0xffffffff),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x3f000000),
                                      offset: Offset(0 * fem, 4 * fem),
                                      blurRadius: 2 * fem,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle25iyL (1:138)
                          left: 0 * fem,
                          top: 138 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 370 * fem,
                              height: 94 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7 * fem),
                                  border: Border.all(color: Color(0xff461f93)),
                                  color: Color(0xffffffff),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x3f000000),
                                      offset: Offset(0 * fem, 4 * fem),
                                      blurRadius: 2 * fem,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // resumenfinancieroconnuestraapl (1:140)
                          left: 14 * fem,
                          top: 12 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 339 * fem,
                              height: 139 * fem,
                              child: RichText(
                                text: TextSpan(
                                  style: GoogleFonts.lato(
                                    //'Inter',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Resumen Financiero.\n',
                                      style: GoogleFonts.lato(
                                        //'Mulish',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w800,
                                        height: 1.255 * ffem / fem,
                                        color: Color(0xff95169e),
                                      ),
                                    ),
                                    TextSpan(
                                      text: '\n',
                                    ),
                                    TextSpan(
                                      text:
                                          'Con nuestra aplicación, tendrás todo lo que necesitas para gestionar tus finanzas de manera inteligente y alcanzar tus metas de ahorro con facilidad. Registra tus ingresos y gastos y recibe sugerencias prácticas para optimizar tu presupuesto.\n',
                                      style: GoogleFonts.lato(
                                        //'Noto Sans',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w300,
                                        height: 1.3625 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                    TextSpan(
                                      text: '\n\n\n',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // ltimosgastosconnuestraaplicaci (1:158)
                          left: 11 * fem,
                          top: 146 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 341 * fem,
                              height: 79 * fem,
                              child: RichText(
                                text: TextSpan(
                                  style: GoogleFonts.lato(
                                    //'Inter',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Últimos Gastos.\n',
                                      style: GoogleFonts.lato(
                                        //'Mulish',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w800,
                                        height: 1.255 * ffem / fem,
                                        color: Color(0xff95169e),
                                      ),
                                    ),
                                    TextSpan(
                                      text: '\n',
                                    ),
                                    TextSpan(
                                      text:
                                          'Con nuestra aplicación, puedes administrar tus finanzas de manera efectiva y controlar tus otros gastos de forma sencilla. ¡Toma el control total de tus finanzas con nosotros!',
                                      style: GoogleFonts.lato(
                                        //'Noto Sans',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w300,
                                        height: 1.3625 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroup2uw83k2 (UjnaXPdYEzexRpfKJS2Uw8)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 1 * fem, 15 * fem),
                    padding: EdgeInsets.fromLTRB(
                        11 * fem, 9 * fem, 17 * fem, 10 * fem),
                    width: 370 * fem,
                    height: 98 * fem,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff461f93)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(7 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0 * fem, 4 * fem),
                          blurRadius: 2 * fem,
                        ),
                      ],
                    ),
                    child: Center(
                      // anlisisinteligentedegastosnues (1:159)
                      child: SizedBox(
                        child: Container(
                          constraints: BoxConstraints(
                            maxWidth: 342 * fem,
                          ),
                          child: RichText(
                            text: TextSpan(
                              style: GoogleFonts.lato(
                                //'Noto Sans',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w300,
                                height: 1.3619999886 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                              children: [
                                TextSpan(
                                  text: 'Análisis Inteligente de Gastos.\n',
                                  style: GoogleFonts.lato(
                                    //'Inter',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xff95169e),
                                  ),
                                ),
                                TextSpan(
                                  text: '\n',
                                  style: GoogleFonts.lato(
                                    //'Inter',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      'Nuestra aplicación utiliza inteligencia artificial para analizar y gestionar tus datos financieros, ofreciendo sugerencias útiles y facilitando el control de tus gastos.',
                                  style: GoogleFonts.lato(
                                    //'Noto Sans',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w300,
                                    height: 1.3625 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // autogrouplrbu9iW (UjnacoeBgpeKzf72JoLRbU)
                    margin:
                        EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 0 * fem),
                    padding: EdgeInsets.fromLTRB(
                        13 * fem, 6 * fem, 11 * fem, 9 * fem),
                    width: 370 * fem,
                    height: 94 * fem,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff461f93)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(7 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0 * fem, 4 * fem),
                          blurRadius: 2 * fem,
                        ),
                      ],
                    ),
                    child: Center(
                      // necesitasayudaconnuestraaplica (1:160)
                      child: SizedBox(
                        child: Container(
                          constraints: BoxConstraints(
                            maxWidth: 346 * fem,
                          ),
                          child: RichText(
                            text: TextSpan(
                              style: GoogleFonts.lato(
                                //'Noto Sans',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w300,
                                height: 1.3619999886 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                              children: [
                                TextSpan(
                                  text: '¿Necesitas Ayuda?\n',
                                  style: GoogleFonts.lato(
                                    //'Inter',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xff95169e),
                                  ),
                                ),
                                TextSpan(
                                  text: '\n',
                                  style: GoogleFonts.lato(
                                    //'Inter',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      'Con nuestra aplicación, el Análisis Inteligente de Gastos, podrás gestionar tus datos financieros y recibir sugerencias útiles. ¿Necesitas ayuda?',
                                  style: GoogleFonts.lato(
                                    //'Noto Sans',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w300,
                                    height: 1.3625 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupdwjvVSv (Ujnam3uSnFYujXgphfdwJv)
              padding:
                  EdgeInsets.fromLTRB(21 * fem, 38 * fem, 18 * fem, 39 * fem),
              width: double.infinity,
              height: 112 * fem,
              decoration: BoxDecoration(
                color: Color(0xff1a1d85),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // paginadeinicio2mQS (1:157)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 4 * fem, 0 * fem),
                    width: 30 * fem,
                    height: 35 * fem,
                    child: Image.asset(
                      'assets/page-1/images/pagina-de-inicio-2.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // homesiN (1:150)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 3 * fem, 10 * fem, 0 * fem),
                    child: Text(
                      'Home',
                      style: GoogleFonts.lato(
                        //'Mulish',
                        fontSize: 17 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.255 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  Container(
                    // investigar1Byx (1:154)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 6 * fem, 1 * fem),
                    width: 28 * fem,
                    height: 32 * fem,
                    child: Image.asset(
                      'assets/page-1/images/investigar-1-T8a.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // anlisisKqG (1:151)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 3 * fem, 12 * fem, 0 * fem),
                    child: Text(
                      'Análisis',
                      style: GoogleFonts.lato(
                        //'Mulish',
                        fontSize: 17 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.255 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  Container(
                    // diagnostico1qYi (1:155)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 3 * fem, 2 * fem),
                    width: 26 * fem,
                    height: 27 * fem,
                    child: Image.asset(
                      'assets/page-1/images/diagnostico-1-jA6.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // historialAL6 (1:152)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 3 * fem, 12 * fem, 0 * fem),
                    child: Text(
                      'Historial',
                      style: GoogleFonts.lato(
                        //'Mulish',
                        fontSize: 17 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.255 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  Container(
                    // agregararchivo1t1C (1:156)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 4 * fem, 2 * fem),
                    width: 29 * fem,
                    height: 31 * fem,
                    child: Image.asset(
                      'assets/page-1/images/agregar-archivo-1-drW.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // agregargastocC6 (1:153)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 1 * fem),
                    constraints: BoxConstraints(
                      maxWidth: 56 * fem,
                    ),
                    child: Text(
                      'Agregar gasto',
                      style: GoogleFonts.lato(
                        //'Mulish',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.0714285714 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
