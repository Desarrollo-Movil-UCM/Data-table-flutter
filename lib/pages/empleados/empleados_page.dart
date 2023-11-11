import 'package:flutter/material.dart';
import 'empleado_widget.dart';

class EmpleadosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Empleados'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      body: const EmpleadosTable(),
    );
  }
}
