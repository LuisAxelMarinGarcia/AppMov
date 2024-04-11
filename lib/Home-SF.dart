import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'app_header.dart';
import 'bottom_nav_bar.dart';
import 'estaditicas-SF.dart';
import 'historial-sf.dart';
import 'Agregar-Gasto-SF.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Estadisticas()));
        break;
      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Historial()));
        break;
      case 3:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => AgregarGasto()));
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    double baseWidth = 440;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppHeader(scaffoldKey: _scaffoldKey),
      drawer: const AppDrawer(),
      body: Container(
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
              // autogroup46jgtqC (5CrSN45bCMQZn6o4rC46jg)
              padding:
                  EdgeInsets.fromLTRB(35 * fem, 20 * fem, 34 * fem, 17 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupqauwRKL (5CrRb5NXxZBwPALtLNQaUW)
                    margin: EdgeInsets.fromLTRB(
                        2.5 * fem, 0 * fem, 4 * fem, 18 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // disciplinayordenfinancierokMc (12:53)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 5 * fem, 19.5 * fem, 0 * fem),
                          constraints: BoxConstraints(
                            maxWidth: 194 * fem,
                          ),
                          child: Text(
                            'Disciplina y orden financiero',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lato(
                              //'Urbanist',
                              fontSize: 24 * ffem,
                              fontWeight: FontWeight.w800,
                              height: 1.2 * ffem / fem,
                              color: Color(0xff461f93),
                            ),
                          ),
                        ),
                        Container(
                          // image15F3U (12:61)
                          width: 151 * fem,
                          height: 79 * fem,
                          child: Image.asset(
                            'assets/images/neg.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroup1jqwAgE (5CrRiKfTeUiL15amei1JQW)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 1 * fem, 18 * fem),
                    padding: EdgeInsets.fromLTRB(
                        19 * fem, 12 * fem, 24 * fem, 12 * fem),
                    width: 370 * fem,
                    height: 178 * fem,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7 * fem),
                      gradient: LinearGradient(
                        begin: Alignment(0, -1),
                        end: Alignment(0, 1),
                        colors: <Color>[Color(0x8495169e), Color(0x001a1d85)],
                        stops: <double>[0, 1],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0 * fem, 4 * fem),
                          blurRadius: 2 * fem,
                        ),
                      ],
                    ),
                    child: Center(
                      // lamejormaneradellegaraunavidaf (12:54)
                      child: SizedBox(
                        child: Container(
                          constraints: BoxConstraints(
                            maxWidth: 327 * fem,
                          ),
                          child: Text(
                            'La mejor manera de llegar a una vida financiera estable se resume en dos palabras: disciplina y orden. Estos dos elementos son cruciales para el desarrollo económico de cualquier persona, si es cierto que existen muchos otros factores que pueden afectar, la disciplina y el orden en tus ingresos son puntos claves que te ayudarán a mantener un balance económico en tus finanzas, sin importar la cantidad de dinero que generes o tengas en el momento.',
                            style: GoogleFonts.lato(
                              //'Noto Sans',
                              fontSize: 12.5 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.3625 * ffem / fem,
                              color: Color(0xff030303),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // image3UTx (12:58)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 2 * fem, 9 * fem),
                    width: 365 * fem,
                    height: 182 * fem,
                    child: Image.asset(
                      'assets/images/EjemEstadis1.png',
                    ),
                  ),
                  Container(
                    // recomendacionesparaquetengasun (12:55)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 1 * fem, 18 * fem),
                    constraints: BoxConstraints(
                      maxWidth: 364 * fem,
                    ),
                    child: Text(
                      'Recomendaciones para que tengas una mejor gestión de tus gastos:',
                      style: GoogleFonts.lato(
                        //'Noto Sans',
                        fontSize: 13 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.3625 * ffem / fem,
                        color: Color(0xff030303),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupzswirjQ (5CrRozAgwgYkM9rxRhzSWi)
                    margin:
                        EdgeInsets.fromLTRB(5 * fem, 0 * fem, 0 * fem, 0 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // autogroupdbdqavJ (5CrRuyzhNiqu4svSttDBDQ)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 5 * fem, 12 * fem, 0 * fem),
                          width: 17 * fem,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle48WZ4 (12:59)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 28 * fem),
                                width: double.infinity,
                                height: 13 * fem,
                                decoration: BoxDecoration(
                                  color: Color(0xff461f93),
                                ),
                              ),
                              Container(
                                // rectangle49Shc (12:60)
                                width: double.infinity,
                                height: 13 * fem,
                                decoration: BoxDecoration(
                                  color: Color(0xff461f93),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // httpsgbmcomacademyconsejospara (12:56)
                          constraints: BoxConstraints(
                            maxWidth: 337 * fem,
                          ),
                          child: Text(
                            'https://gbm.com/academy/consejos-para-que-aprendas-como-administrar-el-dinero/\n\nhttps://conecta.tec.mx/es/noticias/nacional/emprendedores/como-administrar-mi-dinero',
                            style: GoogleFonts.lato(
                              //'Noto Sans',
                              fontSize: 11 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.3625 * ffem / fem,
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
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _selectedIndex,
        onItemSelected: _onItemTapped,
      ),
    );
  }
}
