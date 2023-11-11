import 'package:flutter/material.dart';
import '../pages/empleados/empleados_page.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.50,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
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
              leading: const Icon(Icons.supervisor_account),
              title: const Text('Empleados'),
              onTap: () {
                // Navegar a la página de empleados
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => EmpleadosPage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text('Menu'),
              onTap: () {
                // Navegar a la página de empleados
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.shopping_basket),
              title: const Text('Despensa'),
              onTap: () {
                // Navegar a la página de empleados
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
