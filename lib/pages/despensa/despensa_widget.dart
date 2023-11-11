import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class DespensaTable extends StatefulWidget {
  const DespensaTable({Key? key}) : super(key: key);

  @override
  _DespensaTableState createState() => _DespensaTableState();
}

class _DespensaTableState extends State<DespensaTable> {
  List<dynamic> listado_alimentos = [];

  // Método para cargar y parsear el JSON desde assets
  Future<void> cargarDespensa() async {
    final String jsonExample =
        await rootBundle.loadString('assets/listado_ingredientes.json');

    final data = json.decode(jsonExample);
    setState(() {
      listado_alimentos = data['despensa'];
    });
  }

  @override
  void initState() {
    super.initState();
    cargarDespensa(); // Carga listado_ingredientes.json
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
        minWidth: 900,
        columns: const [
          DataColumn2(label: Text('ID'), fixedWidth: 80),
          DataColumn2(label: Text('Nombre'), fixedWidth: 100),
          DataColumn2(label: Text('Grupo'), fixedWidth: 110),
          DataColumn2(label: Text('Stock'), fixedWidth: 80),
          DataColumn2(label: Text('Medicion'), fixedWidth: 110),
          DataColumn2(label: Text('Costo Unidad'), fixedWidth: 100)
        ],
        rows: List<DataRow>.generate(
          listado_alimentos.length,
          (index) => DataRow(
            cells: [
              DataCell(Text(listado_alimentos[index]['id'])),
              DataCell(Text(listado_alimentos[index]['nombre'])),
              DataCell(Text(listado_alimentos[index]['grupo'])),
              DataCell(Text(listado_alimentos[index]['unidades_disponibles'])),
              DataCell(Text(listado_alimentos[index]['medicion'])),
              DataCell(Text(listado_alimentos[index]['costoPorUnidad'])),
            ],
          ),
        ),
      ),
    );
  }
}
