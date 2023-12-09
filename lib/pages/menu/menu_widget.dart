import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class MenuTable extends StatefulWidget {
  const MenuTable({Key? key}) : super(key: key);

  @override
  _MenuTableState createState() => _MenuTableState();
}

class _MenuTableState extends State<MenuTable> {
  List<dynamic> menuList = []; // Lista para almacenar los empleados

  // Método para cargar y parsear el JSON desde assets
  Future<void> cargarEmpleados() async {
    final String jsonData = await rootBundle.loadString('assets/menu.json');

    final data = json.decode(jsonData);
    setState(() {
      menuList = data['menu'];
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
        headingRowColor:
            MaterialStateColor.resolveWith((states) => Colors.grey[850]!),
        headingTextStyle: const TextStyle(color: Colors.white),
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
          menuList.length,
          (index) => DataRow(
            cells: [
              DataCell(Text(menuList[index]['id'].toString())),
              DataCell(Text(menuList[index]['nombre'])),
              DataCell(Text('\$${menuList[index]['precio (clp)']}')),
              DataCell(Text(menuList[index]['personas'].toString())),
              DataCell(Text(menuList[index]['tiempo_preparacion'])),
              DataCell(Text(menuList[index]['categoria'])),
              DataCell(Text(menuList[index]['ingredientes'] is List
                  ? (menuList[index]['ingredientes'] as List).join(", ")
                  : menuList[index]['ingredientes'].toString())),
            ],
          ),
        ),
      ),
    );
  }
}
