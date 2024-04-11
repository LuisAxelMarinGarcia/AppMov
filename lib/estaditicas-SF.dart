import 'package:flutter/material.dart';
import 'package:mi_aplicacion_flutter/services/user_service.dart';
import 'app_header.dart';
import 'bottom_nav_bar.dart';
import 'Historial-SF.dart';
import 'Agregar-Gasto-SF.dart';
import 'Home-SF.dart';
import 'package:fl_chart/fl_chart.dart';

class Estadisticas extends StatefulWidget {
  @override
  _EstadisticasState createState() => _EstadisticasState();
}

class _EstadisticasState extends State<Estadisticas> {
  int _selectedIndex = 1;
  late Future<Map<String, double>> _categoryTotals;
  late Future<List<Expense>> _dailyExpenses;

  @override
  void initState() {
    super.initState();
    _categoryTotals = _calculateCategoryTotals();
    _dailyExpenses = ExpenseService
        .getExpenses();
  }

  Future<Map<String, double>> _calculateCategoryTotals() async {
    var expenses = await ExpenseService.getExpenses();
    var totals = <String, double>{};

    for (var expense in expenses) {
      String category = expense.category ?? 'Sin categoría';
      double amount = expense.mount ??
          0.0;
      totals[category] = (totals[category] ?? 0.0) + amount;
    }
    return totals;
  }

  List<PieChartSectionData> _getSections(Map<String, double> categoryTotals) {
    final colors = [
      Colors.blue,
      Colors.red,
      Colors.green,
      Colors.orange,
      Colors.purple
    ];
    int colorIndex = 0;

    return categoryTotals.entries.map((entry) {
      final color = colors[colorIndex++ % colors.length];
      return PieChartSectionData(
        value: entry.value,
        title: '${entry.key} (${entry.value.toStringAsFixed(2)})',
        color: color,
        radius: 50,
      );
    }).toList();
  }

  List<BarChartGroupData> _getBarChartGroups(
      Map<String, double> categoryTotals) {
    final colors = [
      Colors.blue,
      Colors.red,
      Colors.green,
      Colors.orange,
      Colors.purple
    ];
    int colorIndex = 0;

    return categoryTotals.entries.map((entry) {
      final color = colors[colorIndex++ % colors.length];
      return BarChartGroupData(
        x: colorIndex,
        barRods: [
          BarChartRodData(y: entry.value, colors: [color], width: 15)
        ],
        showingTooltipIndicators: [0],
      );
    }).toList();
  }
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var availableHeight = mediaQuery.size.height - mediaQuery.padding.top - kToolbarHeight - kBottomNavigationBarHeight;

    return Scaffold(
      appBar: AppHeader(scaffoldKey: GlobalKey<ScaffoldState>()),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: availableHeight),
          child: IntrinsicHeight(
            child: FutureBuilder<Map<String, double>>(
              future: _categoryTotals,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                   children: [
                      Text('Gastos por Categoría', style: Theme.of(context).textTheme.headline6),
                      SizedBox(
                        height: availableHeight * 0.4,
                        child: PieChart(
                          PieChartData(sections: _getSections(snapshot.data!)),
                        ),
                      ),
                      Text('Gastos últimos 7 días', style: Theme.of(context).textTheme.headline6),
                     SizedBox(
                       height: availableHeight * 0.4,
                       child: Column(
                         children: [
                           SizedBox(height: 80),
                           Expanded(
                             child: Center(
                               child: Padding(
                                 padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                 child: BarChart(
                                   BarChartData(
                                     barGroups: _getBarChartGroups(snapshot.data!),
                                     alignment: BarChartAlignment.center,
                                   ),
                                 ),
                               ),
                             ),
                           ),
                           SizedBox(height: 16),
                         ],
                       ),
                     ),
                    ],
                  );
                } else if (snapshot.hasError) {
                  return Text('Error al cargar los datos');
                }
                return CircularProgressIndicator();
              },
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _selectedIndex,
        onItemSelected: _onItemTapped,
      ),
    );
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
}