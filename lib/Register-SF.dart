import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:mi_aplicacion_flutter/iniciar-sesin.dart';
import 'Home-SF.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  double baseWidth = 440;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> registerUser(String email, String password) async {
    try {
      print('Contraseña antes de enviarla al servidor: $password');

      var url = Uri.parse('http://13.90.148.172:8081/user');
      var response = await http.post(
        url,
        body: json.encode({
          'email': email,
          'password': password,
        }),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        print('Usuario registrado con éxito');
      } else {
        throw Exception(
            'Falló el registro del usuario: ${response.statusCode}');
      }
    } catch (e) {
      print('Error al registrar: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      backgroundColor: Color(0xfff5f5f8),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 839 *
              fem, // Puede que necesites ajustar esto para evitar desbordamientos
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
                top: MediaQuery.of(context).size.height *
                    0.1,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      'assets/images/logo3.png',
                      width: MediaQuery.of(context).size.width *
                          0.8,
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle51dG (1:191)
                left: 54 * fem,
                top: 212 * fem,
                child: Align(
                  child: SizedBox(
                    width: 331 * fem,
                    height: 571 * fem,
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
                left: 102 * fem,
                top: 722 * fem,
                child: Align(
                  child: SizedBox(
                    width: 261 * fem,
                    height: 21 * fem,
                    child: RichText(
                      text: TextSpan(
                        style: GoogleFonts.lato(
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.3639999628 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                        children: [
                          TextSpan(
                            text: '¿Ya tienes una cuenta? ',
                            style: GoogleFonts.lato(
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.255 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                          TextSpan(
                            recognizer: TapGestureRecognizer()..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Login()),
                              );
                            },
                            text: 'Iniciar sesión',
                            style: GoogleFonts.lato(
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w800,
                              height: 1.255 * ffem / fem,
                              decoration: TextDecoration.underline,
                              color: Color(0xff1a1d85),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                // rectangle36xTx (1:193)
                left: 80 * fem,
                top: 607 * fem,
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
                left: 95 * fem,
                top: 455 * fem,
                child: Material(
                  borderRadius: BorderRadius.circular(20 * fem),
                  elevation: 5.0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10 * fem),
                    width: 258.99 * fem,
                    height: 60 * fem,
                    child: TextField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Correo electrónico',
                        hintStyle: GoogleFonts.lato(
                          fontSize: 17 * ffem,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffb4b4b4),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 95 * fem,
                top: 528 * fem,
                child: Material(
                  borderRadius: BorderRadius.circular(20 * fem),
                  elevation: 5.0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10 * fem),
                    width: 258.99 * fem,
                    height: 60 * fem,
                    child: TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Contraseña',
                        hintStyle: GoogleFonts.lato(
                          fontSize: 17 * ffem,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffb4b4b4),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 178 * fem,
                top: 623 * fem,
                child: Align(
                  child: GestureDetector(
                    onTap: () async {
                      try {
                        await registerUser(
                            emailController.text, passwordController.text);
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                              'Registro exitoso! Bienvenido ${emailController.text}'),
                          backgroundColor: Colors.green,
                        ));
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Home()),
                        );
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                              'Error al registrar. Por favor, intenta de nuevo.'),
                          backgroundColor: Colors.red,
                        ));
                        print('Error al registrar: $e');
                        if (e is http.ClientException) {
                          print('Detalles de la excepción: ${e.message}');
                        } else if (e is http.Response) {
                          print('Estado de la respuesta: ${e.statusCode}');
                          print('Cuerpo de la respuesta: ${e.body}');
                        }
                      }
                    },
                    child: Container(
                      width: 98 * fem,
                      height: 23 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40 * fem),
                        color: Color(0xff1a1d85),
                      ),
                      child: Center(
                        child: Text(
                          'Registrarse',
                          style: GoogleFonts.lato(
                            fontSize: 18 * ffem,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // line57XC (1:198)
                left: 95 * fem,
                top: 559 * fem,
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
                // welcometocoincrazeELv (1:199)
                left: 91 * fem,
                top: 347 * fem,
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
                // rectangle8jYa (1:200)
                left: 80 * fem,
                top: 255 * fem,
                child: Align(
                  child: SizedBox(
                    width: 280 * fem,
                    height: 58 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40 * fem),
                        color: Color(0xffa8a8a8),
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
                // rectangle921t (1:201)
                left: 222 * fem,
                top: 255 * fem,
                child: Align(
                  child: SizedBox(
                    width: 138 * fem,
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
                // pilademonedas2mXC (1:204)
                left: 200 * fem,
                top: 393 * fem,
                child: Align(
                  child: SizedBox(
                    width: 40 * fem,
                    height: 38 * fem,
                    child: Image.asset(
                      'assets/images/pila-de-monedas.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                // image12Gyk (1:205)
                left: 51 * fem,
                top: 72 * fem,
                child: Align(
                  child: SizedBox(
                    width: 343 * fem,
                    height: 62 * fem,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
