import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'app_header.dart';
import 'bottom_nav_bar.dart';
import 'estaditicas-SF.dart';
import 'historial-sf.dart';
import 'Home-SF.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';



class AgregarGasto extends StatefulWidget {
  @override
  _AgregarGastoState createState() => _AgregarGastoState();
}

Future<void> login(String email, String password) async {
  var url = Uri.parse('http://13.90.148.172:8081/user/login');
  var response = await http.post(url, headers: {
    'Content-Type': 'application/json',
  }, body: jsonEncode({
    'email': email,
    'password': password,
  }));

  if (response.statusCode == 200) {
    var jsonResponse = jsonDecode(response.body);
    String userId = jsonResponse['id'];

    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('userId', userId);

    String? storedUserId = prefs.getString('userId');
    if (storedUserId != null && storedUserId == userId) {
      print('UserID almacenado correctamente: $storedUserId');
    } else {
      print('Error al almacenar UserID.');
    }
  } else {
    print('Error durante el inicio de sesión: ${response.body}');
  }
}

class _AgregarGastoState extends State<AgregarGasto> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 3;

  TextEditingController descriptionController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  Future<void> addExpense() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String userId = prefs.getString('userId') ?? '';

    if (userId.isEmpty) {
      print('Error: No se encontró el ID del usuario.');
      return;
    }

    var url = Uri.parse('http://13.90.148.172:8081/expense');
    var response = await http.post(url, headers: {
      'Content-Type': 'application/json',
    }, body: jsonEncode({
      'mount': double.parse(amountController.text),
      'category': categoryController.text,
      'description': descriptionController.text,
      'date': dateController.text,
      'userId': userId
    }));

    if (response.statusCode == 200) {
      print('Gasto añadido correctamente');
    } else {
      print('Error al añadir el gasto');
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Home()));
        break;
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Estadisticas()));
        break;
      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Historial()));
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 440;
    double fem = MediaQuery
        .of(context)
        .size
        .width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppHeader(scaffoldKey: _scaffoldKey),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 39 * fem),
              Text(
                'Agregar gasto realizado',
                style: GoogleFonts.lato(
                  fontSize: 32 * ffem,
                  fontWeight: FontWeight.w800,
                  height: 1.2,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 30),
              TextFormField(
                controller: descriptionController,
                decoration: InputDecoration(
                  labelText: 'Descripción',
                  border: OutlineInputBorder(),
                  fillColor: Color(0xfff5f5f8),
                  filled: true,
                ),
              ),
              SizedBox(height: 18),
              TextFormField(
                controller: amountController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Cantidad',
                  border: OutlineInputBorder(),
                  fillColor: Color(0xfff5f5f8),
                  filled: true,
                ),
              ),
              SizedBox(height: 18),
              TextFormField(
                controller: categoryController,
                decoration: InputDecoration(
                  labelText: 'Categoría',
                  border: OutlineInputBorder(),
                  fillColor: Color(0xfff5f5f8),
                  filled: true,
                ),
              ),
              SizedBox(height: 18),
              TextFormField(
                controller: dateController,
                decoration: InputDecoration(
                  labelText: 'Fecha',
                  border: OutlineInputBorder(),
                  fillColor: Color(0xfff5f5f8),
                  filled: true,
                ),
                readOnly: true,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2101),
                  );
                  if (pickedDate != null) {
                    String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                    dateController.text = formattedDate;
                  }
                },
              ),
              SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.blue, // text color
                ),
                onPressed: addExpense,
                child: Text('Agregar'),
              ),

            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _selectedIndex,
        onItemSelected: _onItemTapped,
      ),
    );
  }
}