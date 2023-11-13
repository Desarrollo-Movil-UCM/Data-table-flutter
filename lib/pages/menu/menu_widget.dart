import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class EmpleadosTable extends StatefulWidget {
  const EmpleadosTable({Key? key}) : super(key: key);

  @override
  _EmpleadosTableState createState() => _EmpleadosTableState();
}

class _EmpleadosTableState extends State<EmpleadosTable> {
  List<dynamic> empleados = []; // Lista para almacenar los empleados

  // Método para cargar y parsear el JSON desde assets
  Future<void> cargarEmpleados() async {
    final String jsonData = await rootBundle.loadString('assets/menu.json');

    final data = json.decode(jsonData);
    setState(() {
      empleados = data['menu'];
    });
  }

  @override
  void initState() {
    super.initState();
    cargarEmpleados(); // Carga los empleados al inicio
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: DataTable2(
        columnSpacing: 18,
        horizontalMargin: 12,
        minWidth: 1200,
        columns: const [
          DataColumn2(label: Text('ID'), numeric: true, fixedWidth: 100),
          DataColumn2(label: Text('Nombre'), fixedWidth: 100),
          DataColumn2(
              label: Text('Precio (CLP)'), numeric: true, fixedWidth: 100),
          DataColumn2(label: Text('Personas'), numeric: true, fixedWidth: 150),
          DataColumn2(label: Text('Tiempo de Preparación'), fixedWidth: 250),
          DataColumn2(label: Text('Categoría'), fixedWidth: 200),
          DataColumn2(label: Text('Ingredientes'), size: ColumnSize.L),
        ],
        rows: List<DataRow>.generate(
          empleados.length,
          (index) => DataRow(
            cells: [
              DataCell(Text(empleados[index]['id'].toString())),
              DataCell(Text(empleados[index]['nombre'])),
              DataCell(Text('\$${empleados[index]['precio (clp)']}')),
              DataCell(Text(empleados[index]['personas'].toString())),
              DataCell(Text(empleados[index]['tiempo_preparacion'])),
              DataCell(Text(empleados[index]['categoria'])),
              DataCell(Text(empleados[index]['ingredientes'] is List
                  ? (empleados[index]['ingredientes'] as List).join(", ")
                  : empleados[index]['ingredientes'].toString())),
            ],
          ),
        ),
      ),
    );
  }
}
