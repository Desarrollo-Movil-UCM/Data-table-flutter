import 'dart:ffi';

import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

/// Example without a datasource

class DataTable2SimpleDemo extends StatefulWidget {
  const DataTable2SimpleDemo({Key? key}) : super(key: key);

  @override
  _DataTable2SimpleDemoState createState() => _DataTable2SimpleDemoState();
}

class _DataTable2SimpleDemoState extends State<DataTable2SimpleDemo> {
  List<dynamic> empleados = []; // Lista para almacenar los empleados

  // Método para cargar y parsear el JSON desde assets
  Future<void> cargarEmpleados() async {
    final String jsonExample =
        await rootBundle.loadString('assets/empleados.json');

    final data = json.decode(jsonExample);
    setState(() {
      empleados = data['empleados'];
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
        minWidth: 900,
        columns: const [
          DataColumn2(label: Text('Nombre'), fixedWidth: 80),
          DataColumn2(label: Text('Apellido'), fixedWidth: 80),
          DataColumn2(
            label: Text('N°Contacto'),
            fixedWidth: 100,
          ),
          DataColumn2(label: Text('Rol'), fixedWidth: 80),
          DataColumn2(label: Text('Turno'), fixedWidth: 100),
          DataColumn2(label: Text('Sueldo'), numeric: true, size: ColumnSize.S),
          DataColumn(
            label: Text('Bonos'),
            numeric: true,
          ),
          DataColumn2(label: Text('Departamento'), size: ColumnSize.L),
          DataColumn2(label: Text('Experiencia'), fixedWidth: 100),
        ],
        rows: List<DataRow>.generate(
          empleados.length,
          (index) => DataRow(
            cells: [
              DataCell(Text(empleados[index]['nombre'])),
              DataCell(Text(empleados[index]['apellido'])),
              DataCell(Text(empleados[index]['numero_contacto'])),
              DataCell(Text(empleados[index]['rol'])),
              DataCell(Text(empleados[index]['turno'])),
              DataCell(Text(empleados[index]['sueldo_base'].toString())),
              DataCell(Text(empleados[index]['bonos'].toString())),
              DataCell(Text(empleados[index]['departamento'])),
              DataCell(Text(empleados[index]['experiencia'])),
            ],
          ),
        ),
      ),
    );
  }
}
