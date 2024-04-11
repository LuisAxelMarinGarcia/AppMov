import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 440;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // homedgz (12:34)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xfff5f5f8),
          boxShadow: [
            BoxShadow(
              color: Color(0x3f000000),
              offset: Offset(0*fem, 4*fem),
              blurRadius: 2*fem,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupmmievvz (5CrQyLu5DhG5r3pRHwmMiE)
              padding: EdgeInsets.fromLTRB(14*fem, 19*fem, 22*fem, 10*fem),
              width: double.infinity,
              height: 77*fem,
              decoration: BoxDecoration (
                color: Color(0xff1a1d85),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupyex8Rsk (5CrRB1EJwwPeurA6Y7yEX8)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 0*fem),
                    width: 53*fem,
                    height: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          // rectangle18kQE (12:39)
                          left: 9*fem,
                          top: 3*fem,
                          child: Align(
                            child: SizedBox(
                              width: 35*fem,
                              height: 33*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  color: Color(0xffd9d9d9),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // image14eVc (12:57)
                          left: 0*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 53*fem,
                              height: 48*fem,
                              child: Image.asset(
                                'assets/page-1/images/image-14-fpJ.png',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // coincrazekoY (12:38)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 104*fem, 5*fem),
                    child: Text(
                      'COIN CRAZE',
                      style: SafeGoogleFont (
                        'Urbanist',
                        fontSize: 24*ffem,
                        fontWeight: FontWeight.w900,
                        height: 1.2*ffem/fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  Container(
                    // autogrouppyuirLn (5CrRGauLxgcPfWVTPaPyUi)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 17*fem),
                    width: 26*fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // rectangle45a1t (12:50)
                          width: double.infinity,
                          height: 3*fem,
                          decoration: BoxDecoration (
                            color: Color(0xffd9d9d9),
                          ),
                        ),
                        SizedBox(
                          height: 4*fem,
                        ),
                        Container(
                          // rectangle46toG (12:51)
                          width: double.infinity,
                          height: 3*fem,
                          decoration: BoxDecoration (
                            color: Color(0xffd9d9d9),
                          ),
                        ),
                        SizedBox(
                          height: 4*fem,
                        ),
                        Container(
                          // rectangle472ea (12:52)
                          width: double.infinity,
                          height: 3*fem,
                          decoration: BoxDecoration (
                            color: Color(0xffd9d9d9),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupkvxravz (5CrRPahgoEHjWBtrwHKVxr)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17*fem),
                    width: 53*fem,
                    height: 25*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // menuTU (12:48)
                          left: 0*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 53*fem,
                              height: 25*fem,
                              child: Text(
                                'Menú',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 20*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125*ffem/fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // menCSa (12:49)
                          left: 0*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 53*fem,
                              height: 25*fem,
                              child: Text(
                                'Menú',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 20*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125*ffem/fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroup46jgtqC (5CrSN45bCMQZn6o4rC46jg)
              padding: EdgeInsets.fromLTRB(35*fem, 20*fem, 34*fem, 17*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupqauwRKL (5CrRb5NXxZBwPALtLNQaUW)
                    margin: EdgeInsets.fromLTRB(2.5*fem, 0*fem, 4*fem, 18*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // disciplinayordenfinancierokMc (12:53)
                          margin: EdgeInsets.fromLTRB(0*fem, 5*fem, 19.5*fem, 0*fem),
                          constraints: BoxConstraints (
                            maxWidth: 194*fem,
                          ),
                          child: Text(
                            'Disciplina y orden financiero',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Urbanist',
                              fontSize: 24*ffem,
                              fontWeight: FontWeight.w800,
                              height: 1.2*ffem/fem,
                              color: Color(0xff461f93),
                            ),
                          ),
                        ),
                        Container(
                          // image15F3U (12:61)
                          width: 151*fem,
                          height: 79*fem,
                          child: Image.asset(
                            'assets/page-1/images/image-15.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroup1jqwAgE (5CrRiKfTeUiL15amei1JQW)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 18*fem),
                    padding: EdgeInsets.fromLTRB(19*fem, 12*fem, 24*fem, 12*fem),
                    width: 370*fem,
                    height: 178*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(7*fem),
                      gradient: LinearGradient (
                        begin: Alignment(0, -1),
                        end: Alignment(0, 1),
                        colors: <Color>[Color(0x8495169e), Color(0x001a1d85)],
                        stops: <double>[0, 1],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                    child: Center(
                      // lamejormaneradellegaraunavidaf (12:54)
                      child: SizedBox(
                        child: Container(
                          constraints: BoxConstraints (
                            maxWidth: 327*fem,
                          ),
                          child: Text(
                            'La mejor manera de llegar a una vida financiera estable se resume en dos palabras: disciplina y orden. Estos dos elementos son cruciales para el desarrollo económico de cualquier persona, si es cierto que existen muchos otros factores que pueden afectar, la disciplina y el orden en tus ingresos son puntos claves que te ayudarán a mantener un balance económico en tus finanzas, sin importar la cantidad de dinero que generes o tengas en el momento.',
                            style: SafeGoogleFont (
                              'Noto Sans',
                              fontSize: 12.5*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.3625*ffem/fem,
                              color: Color(0xff030303),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // image3UTx (12:58)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 9*fem),
                    width: 365*fem,
                    height: 182*fem,
                    child: Image.asset(
                      'assets/page-1/images/image-3.png',
                    ),
                  ),
                  Container(
                    // recomendacionesparaquetengasun (12:55)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 18*fem),
                    constraints: BoxConstraints (
                      maxWidth: 364*fem,
                    ),
                    child: Text(
                      'Recomendaciones para que tengas una mejor gestión de tus gastos:',
                      style: SafeGoogleFont (
                        'Noto Sans',
                        fontSize: 13*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.3625*ffem/fem,
                        color: Color(0xff030303),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupzswirjQ (5CrRozAgwgYkM9rxRhzSWi)
                    margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 0*fem, 0*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // autogroupdbdqavJ (5CrRuyzhNiqu4svSttDBDQ)
                          margin: EdgeInsets.fromLTRB(0*fem, 5*fem, 12*fem, 0*fem),
                          width: 17*fem,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle48WZ4 (12:59)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 28*fem),
                                width: double.infinity,
                                height: 13*fem,
                                decoration: BoxDecoration (
                                  color: Color(0xff461f93),
                                ),
                              ),
                              Container(
                                // rectangle49Shc (12:60)
                                width: double.infinity,
                                height: 13*fem,
                                decoration: BoxDecoration (
                                  color: Color(0xff461f93),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // httpsgbmcomacademyconsejospara (12:56)
                          constraints: BoxConstraints (
                            maxWidth: 337*fem,
                          ),
                          child: Text(
                            'https://gbm.com/academy/consejos-para-que-aprendas-como-administrar-el-dinero/\n\nhttps://conecta.tec.mx/es/noticias/nacional/emprendedores/como-administrar-mi-dinero',
                            style: SafeGoogleFont (
                              'Noto Sans',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.3625*ffem/fem,
                              color: Color(0xff030303),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupduijcEi (5CrS5EEHsf8fvhrANHDUiJ)
              padding: EdgeInsets.fromLTRB(20*fem, 38*fem, 19*fem, 39*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xff1a1d85),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // paginadeinicio3K98 (12:47)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 0*fem),
                    width: 30*fem,
                    height: 35*fem,
                    child: Image.asset(
                      'assets/page-1/images/pagina-de-inicio-3-ifG.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // homepra (12:40)
                    margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 10*fem, 0*fem),
                    child: Text(
                      'Home',
                      style: SafeGoogleFont (
                        'Mulish',
                        fontSize: 17*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.255*ffem/fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  Container(
                    // investigar2Yna (12:44)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 1*fem),
                    width: 28*fem,
                    height: 32*fem,
                    child: Image.asset(
                      'assets/page-1/images/investigar-2.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // anlisissK4 (12:41)
                    margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 12*fem, 0*fem),
                    child: Text(
                      'Análisis',
                      style: SafeGoogleFont (
                        'Mulish',
                        fontSize: 17*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.255*ffem/fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  Container(
                    // diagnostico2ngv (12:45)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 2*fem),
                    width: 26*fem,
                    height: 27*fem,
                    child: Image.asset(
                      'assets/page-1/images/diagnostico-2.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // historialJfG (12:42)
                    margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 12*fem, 0*fem),
                    child: Text(
                      'Historial',
                      style: SafeGoogleFont (
                        'Mulish',
                        fontSize: 17*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.255*ffem/fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  Container(
                    // agregararchivo2ptW (12:46)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 2*fem),
                    width: 29*fem,
                    height: 31*fem,
                    child: Image.asset(
                      'assets/page-1/images/agregar-archivo-2.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // agregargastoABg (12:43)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                    constraints: BoxConstraints (
                      maxWidth: 56*fem,
                    ),
                    child: Text(
                      'Agregar gasto',
                      style: SafeGoogleFont (
                        'Mulish',
                        fontSize: 14*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.0714285714*ffem/fem,
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