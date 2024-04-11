import 'package:flutter/material.dart';
import 'package:mi_aplicacion_flutter/services/user_service.dart';
import 'app_header.dart';
import 'bottom_nav_bar.dart';
import 'estaditicas-SF.dart';
import 'Home-SF.dart';
import 'Agregar-Gasto-SF.dart';

class Historial extends StatefulWidget {
  @override
  _HistorialState createState() => _HistorialState();
}

class _HistorialState extends State<Historial> {
  int _currentIndex = 2;
  Future<List<Expense>>? _expensesFuture;

  @override
  void initState() {
    super.initState();
    _expensesFuture = ExpenseService.getExpenses();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeader(scaffoldKey: GlobalKey<ScaffoldState>()),
      body: FutureBuilder<List<Expense>>(
        future: _expensesFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            if (snapshot.data!.isEmpty) {
              return Center(child: Text('No hay gastos para mostrar.'));
            }
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                Expense expense = snapshot.data![index];
                return ListTile(
                  leading: Icon(Icons.attach_money),
                  title: Text(expense.description ?? 'No description provided'),
                  subtitle: Text("Cantidad: ${expense.mount?.toString() ?? 'Unknown'} - Categoría: ${expense.category ?? 'No category'}"),
                  trailing: Text(expense.date ?? 'No date provided'),
                );
              },
            );
          } else {
            return Center(child: Text('No se encontraron datos'));
          }
        },
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _currentIndex,
        onItemSelected: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
        break;
      case 1:
        Navigator.push(context, MaterialPageRoute(builder: (context) => Estadisticas()));
        break;
      case 2:
        _expensesFuture = ExpenseService.getExpenses();
        break;
      case 3:
        Navigator.push(context, MaterialPageRoute(builder: (context) => AgregarGasto()));
        break;
      default:
        break;
    }
  }
}
