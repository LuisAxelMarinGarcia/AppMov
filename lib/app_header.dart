import 'package:flutter/material.dart';
import 'package:mi_aplicacion_flutter/services/user_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mi_aplicacion_flutter/iniciar-sesin.dart';



class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const AppHeader({
    Key? key,
    required this.scaffoldKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Image.asset('assets/images/logo.png'),
      title: const Text('COIN CRAZE'),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            if (scaffoldKey.currentState == null) {
              print("El estado del ScaffoldKey es nulo.");
            } else {
              scaffoldKey.currentState!.openDrawer();
            }
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class AppDrawer extends StatefulWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  _AppDrawerState createState() => _AppDrawerState();
}


class _AppDrawerState extends State<AppDrawer> {
  String userEmail = "Usuario desconocido";
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    print('Iniciando carga del email del usuario...');
    loadUserEmail();
  }

  void loadUserEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String userId = prefs.getString('userId') ?? '';
    print('UserID obtenido de SharedPreferences: $userId');
    if (userId.isNotEmpty) {
      fetchUserEmail(userId);
    } else {
      print('UserID no encontrado en SharedPreferences.');
      setState(() {
        isLoading = false;
        userEmail = "ID de usuario no encontrado";
      });
    }
  }

  void fetchUserEmail(String userId) async {
    print('Iniciando la solicitud para obtener información del usuario...');
    try {
      User user = await UserService.getUser(userId);
      print('Datos del usuario recibidos: ${user.email}');
      setState(() {
        userEmail = user.email;  // No se necesita el operador ?? aquí porque ya lo manejamos en User.fromJson
        isLoading = false;
      });
    } catch (e) {
      print('Error al obtener el correo electrónico del usuario: $e');
      setState(() {
        userEmail = "Error al cargar el correo";
        isLoading = false;
      });
    }
  }

  void logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('userId');  // Elimina el ID del usuario almacenado.

    // Reemplaza la pila de navegación actual con la pantalla de inicio de sesión.
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => Login(),  // Navega a la pantalla de IniciarSesion.
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: isLoading ? CircularProgressIndicator() : Text(userEmail),
            accountName: Text(''),
            currentAccountPicture: CircleAvatar(
              child: Text(userEmail.isNotEmpty ? userEmail[0].toUpperCase() : 'U'),
              backgroundColor: Theme.of(context).primaryColor,
            ),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),  // Un icono adecuado para cerrar sesión
            title: Text('Cerrar sesión'),
            onTap: logout,
          ),
          // Agrega más ListTile si es necesario
        ],
      ),
    );
  }
}