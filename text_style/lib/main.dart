import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Nazalization',
      brightness: Brightness.light,
      primaryColor: Colors.purple.shade300,
      ),
      home: Scaffold(
        backgroundColor: Colors.purple.shade100,
        appBar: AppBar(
          title: Text(
            'Aplicativo Exemplo Scaffold',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.purple.shade500,
        ),
        body: Center(
          child: Text(
            'Texto 1\nTexto 2',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 50,
              /*color: Colors.black,
              height: 2,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.yellow.shade700,
              decoration: TextDecoration.underline,*/
            ),
          ),
        ),
      ),
    );

    /*Container(
      child: Center(
        child: Text(
          'Texto 1\nTexto 2',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Colors.black,
            fontSize: 50,
            height: 2,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.yellow.shade700,
            decoration: TextDecoration.underline,
            fontFamily: 'Nazalization',
          ),
        ),
      ),
    );*/
  }
}
