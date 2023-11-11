import 'package:flutter/material.dart';
import 'empl_widget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Restaurant Pacheco y Compañia'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Dashboard',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.supervisor_account),
                title: Text('Empleados'),
              ),
              ListTile(
                leading: Icon(Icons.book),
                title: Text('Menu'),
              ),
              ListTile(
                leading: Icon(Icons.shopping_basket),
                title: Text('Despensa'),
              ),
            ],
          ),
        ),
        body: const DataTable2SimpleDemo(),
      ),
    );
  }
}
