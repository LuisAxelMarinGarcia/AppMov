import 'package:flutter/material.dart';
import 'package:mi_aplicacion_flutter/services/user_service.dart';  // Asegúrate que este import incluya ExpenseService

class EditarGasto extends StatefulWidget {
  final Expense expense;

  EditarGasto({Key? key, required this.expense}) : super(key: key);

  @override
  _EditarGastoState createState() => _EditarGastoState();
}

class _EditarGastoState extends State<EditarGasto> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _descriptionController;
  late TextEditingController _mountController;
  late TextEditingController _categoryController;
  late TextEditingController _dateController;

  @override
  void initState() {
    super.initState();
    _descriptionController = TextEditingController(text: widget.expense.description);
    _mountController = TextEditingController(text: widget.expense.mount.toString());
    _categoryController = TextEditingController(text: widget.expense.category);
    _dateController = TextEditingController(text: widget.expense.date);
  }

  @override
  void dispose() {
    _descriptionController.dispose();
    _mountController.dispose();
    _categoryController.dispose();
    _dateController.dispose();
    super.dispose();
  }

  Future<void> _updateExpense() async {
    if (_formKey.currentState!.validate()) {
      await ExpenseService.updateExpense(
          widget.expense.id,
          double.parse(_mountController.text),
          _categoryController.text,
          _descriptionController.text,
          _dateController.text
      ).then((_) {
        Navigator.pop(context); // Vuelve a la pantalla anterior
      }).catchError((error) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Error al actualizar el gasto: ${error.toString()}"),
        ));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Editar Gasto'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: <Widget>[
            TextFormField(
              controller: _descriptionController,
              decoration: InputDecoration(labelText: 'Descripción'),
              validator: (value) => value!.isEmpty ? 'Este campo no puede estar vacío' : null,
            ),
            TextFormField(
              controller: _mountController,
              decoration: InputDecoration(labelText: 'Monto'),
              keyboardType: TextInputType.number,
              validator: (value) => value!.isEmpty ? 'Este campo no puede estar vacío' : null,
            ),
            TextFormField(
              controller: _categoryController,
              decoration: InputDecoration(labelText: 'Categoría'),
            ),
            TextFormField(
              controller: _dateController,
              decoration: InputDecoration(labelText: 'Fecha'),
            ),
            ElevatedButton(
              onPressed: _updateExpense,
              child: Text('Guardar Cambios'),
            ),
          ],
        ),
      ),
    );
  }
}
