import 'package:flutter/material.dart';
import 'pages/home/home.dart';
import 'widgets/navdrawer.dart';

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
          drawer: const NavDrawer(),
          body: const Home()),
    );
  }
}
