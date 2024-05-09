import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Imagens',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.teal,
        ),
        body: Image.network(
          'https://blog.cobasi.com.br/wp-content/uploads/2021/09/AdobeStock_567502314-1.webp',
          fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
        ),
        //Image.asset('assets/images/cat.png',
        // fit: BoxFit.cover,
        //height: double.infinity,
        //width: double.infinity,
      ),
    );
  }
}
