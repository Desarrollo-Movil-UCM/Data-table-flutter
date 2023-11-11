import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.blue[700],
          ),
          child: const Center(
              child: Text(
            'Estadisticas de Restaurant',
            style: TextStyle(fontSize: 24),
          )),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.blue[700],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text('Grafico 1'),
              ),
            ),
            Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.blue[700],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text('Grafico 2'),
                ))
          ],
        )
      ],
    ));
  }
}
