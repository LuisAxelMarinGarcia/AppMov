import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'Home-SF.dart';
import 'package:mi_aplicacion_flutter/Register-SF.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> loginUser(BuildContext context, String email, String password) async {
    try {
      var url = Uri.parse('http://13.90.148.172:8081/user/login');
      var response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'email': email, 'password': password}),
      );

      print('Response body: ${response.body}');

      if (response.statusCode == 200) {
        var data = json.decode(response.body);

        String? userId = data['data']?['id'];
        if (userId == null) {
          throw Exception("El ID del usuario no está presente en la respuesta.");
        }

        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('userId', userId);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Home()),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error al iniciar sesión. Verifica tus credenciales.')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error al conectarse al servicio de autenticación.')),
      );
      print('Error al iniciar sesión: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 440;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 839 * fem,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xff000000)),
          color: Color(0xfff5f5f8),
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
              left: 0,
              right: 0,
              top: -MediaQuery.of(context).size.height * 0.1,
              child: Image.asset(
                'assets/images/Encabezado-Login-Registro.png',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.7,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.1, // Aumenta este valor para mover el logo hacia abajo
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    'assets/images/logo3.png',
                    width: MediaQuery.of(context).size.width * 0.8, // Aumenta este valor para hacer el logo más grande
                    // Agrega height si necesitas un valor específico de altura
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle5uQ2 (1:169)
              left: 54 * fem,
              top: 212 * fem,
              child: Align(
                child: SizedBox(
                  width: 331 * fem,
                  height: 573 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40 * fem),
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // notienesunacuentaregstrateMmp (1:170)
              left: 92 * fem,
              top: 722 * fem,
              child: Align(
                child: SizedBox(
                  width: 261 * fem,
                  height: 21 * fem,
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
                            //'Mulish',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.255 * ffem / fem,
                            decoration: TextDecoration.underline,
                            color: Color(0xff000000),
                            decorationColor: Color(0xff000000),
                          ),
                        ),
                      TextSpan(
                        text: 'Regístrate aquí',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Register()),
                          );
                        },
                      )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle5epn (1:171)
              left: 81 * fem,
              top: 608 * fem,
              child: Align(
                child: SizedBox(
                  width: 280 * fem,
                  height: 55 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40 * fem),
                      color: Color(0xff1a1d85),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xccffffff),
                          offset: Offset(4 * fem, 4 * fem),
                          blurRadius: 3 * fem,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 92 * fem,
              top: 459 * fem,
              child: Material(
                type: MaterialType.transparency, // Esto hace que el fondo sea transparente
                child: Container(
                  width: 280 * fem,
                  padding: EdgeInsets.symmetric(horizontal: 20 * fem),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: 'Correo electrónico',
                      border: InputBorder.none,
                    ),
                    style: GoogleFonts.lato(
                      fontSize: 17 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.3625,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              left: 92 * fem,
              top: 532 * fem,
              child: Material(
                type: MaterialType.transparency,
                child: Container(
                  width: 280 * fem,
                  padding: EdgeInsets.symmetric(horizontal: 20 * fem),
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Contraseña',
                      border: InputBorder.none,
                    ),
                    style: GoogleFonts.lato(
                      fontSize: 17 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.3625,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              left: 165 * fem,
              top: 624 * fem,
              child: GestureDetector(
                onTap: () {
                  loginUser(context, emailController.text, passwordController.text);
                },
                child: Container(
                  width: 112 * fem,
                  height: 23 * fem,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40 * fem),
                    color: Color(0xff1a1d85),
                  ),
                  child: Text(
                    'Iniciar sesión',
                    style: GoogleFonts.lato(
                      fontSize: 18 * ffem,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // line1rUv (1:176)
              left: 93 * fem,
              top: 489.0000065211 * fem,
              child: Align(
                child: SizedBox(
                  width: 258.99 * fem,
                  height: 1 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffb4b4b4),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // line2twQ (1:177)
              left: 92 * fem,
              top: 563 * fem,
              child: Align(
                child: SizedBox(
                  width: 259 * fem,
                  height: 1 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffb4b4b4),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // welcometocoincrazekTp (1:178)
              left: 88 * fem,
              top: 346 * fem,
              child: Align(
                child: SizedBox(
                  width: 260 * fem,
                  height: 30 * fem,
                  child: Text(
                    'Welcome to Coin Craze',
                    style: GoogleFonts.lato(
                      //'Urbanist',
                      fontSize: 25 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2 * ffem / fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle7B3L (1:179)
              left: 81 * fem,
              top: 251 * fem,
              child: Align(
                child: SizedBox(
                  width: 152 * fem,
                  height: 58 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40 * fem),
                      color: Color(0xff1a1d85),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // iniciarsesinifQ (1:202)
              left: 105 * fem,
              top: 272 * fem,
              child: Align(
                child: SizedBox(
                  width: 106 * fem,
                  height: 22 * fem,
                  child: Text(
                    'Iniciar sesión',
                    style: GoogleFonts.lato(
                      //'Mulish',
                      fontSize: 17 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.255 * ffem / fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // registrartyC (1:203)
              left: 256 * fem,
              top: 272 * fem,
              child: Align(
                child: SizedBox(
                  width: 75 * fem,
                  height: 22 * fem,
                  child: Text(
                    'Registrar',
                    style: GoogleFonts.lato(
                      //'Mulish',
                      fontSize: 17 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.255 * ffem / fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // image114uk (1:183)
              left: 198 * fem,
              top: 392 * fem,
              child: Align(
                child: SizedBox(
                  width: 42 * fem,
                  height: 47 * fem,
                  child: Image.asset(
                    ('assets/images/pila-de-monedas.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // line19zoQ (1:184)
              left: 0 * fem,
              top: 212.0000000918 * fem,
              child: Align(
                child: SizedBox(
                  width: 420 * fem,
                  height: 1 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // line20Wmk (1:185)
              left: 7 * fem,
              top: 660.0000000918 * fem,
              child: Align(
                child: SizedBox(
                  width: 420 * fem,
                  height: 1 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // line21S9c (1:186)
              left: 10 * fem,
              top: 309.0000000918 * fem,
              child: Align(
                child: SizedBox(
                  width: 420 * fem,
                  height: 1 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
