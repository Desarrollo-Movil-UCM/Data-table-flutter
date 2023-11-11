import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

/// Example without a datasource

class MenuTable extends StatefulWidget {
  const MenuTable({Key? key}) : super(key: key);

  @override
  _MenuTableState createState() => _MenuTableState();
}

class _MenuTableState extends State<MenuTable> {
  List<dynamic> menuItems = []; // Lista para almacenar los platos del menú

  // Método para cargar y parsear el JSON desde assets
  Future<void> cargarMenu() async {
    final String jsonMenu = await rootBundle.loadString('assets/menu.json');

    final data = json.decode(jsonMenu);
    setState(() {
      menuItems = data['menu'];
    });
  }

  @override
  void initState() {
    super.initState();
    cargarMenu(); // Carga el menú al inicio
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
          DataColumn2(label: Text('ID'), numeric: true, fixedWidth: 100),
          DataColumn2(label: Text('Nombre'), fixedWidth: 250),
          DataColumn2(
              label: Text('Precio (USD)'), numeric: true, fixedWidth: 150),
          DataColumn2(label: Text('Personas'), numeric: true, fixedWidth: 150),
          DataColumn2(label: Text('Tiempo de Preparación'), fixedWidth: 250),
          DataColumn2(label: Text('Categoría'), fixedWidth: 200),
          DataColumn2(label: Text('Ingredientes'), size: ColumnSize.L),
        ],
        rows: List<DataRow>.generate(
          menuItems.length,
          (index) => DataRow(
            cells: [
              DataCell(Text(menuItems[index]['id'].toString())),
              DataCell(Text(menuItems[index]['nombre'])),
              DataCell(Text(menuItems[index]['precio (USD)'].toString())),
              DataCell(Text(menuItems[index]['personas'].toString())),
              DataCell(Text(menuItems[index]['tiempo_preparacion'])),
              DataCell(Text(menuItems[index]['categoria'])),
              DataCell(Text(menuItems[index]['ingredientes'] is List
                  ? (menuItems[index]['ingredientes'] as List).join(", ")
                  : menuItems[index]['ingredientes'].toString())),
            ],
          ),
        ),
      ),
    );
  }
}
