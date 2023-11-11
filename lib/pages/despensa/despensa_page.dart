import 'package:flutter/material.dart';
import 'despensa_widget.dart';

class DespensaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Despensa'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      body: const DespensaTable(), // despensa_widget.dart
    );
  }
}
