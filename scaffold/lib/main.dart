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
            'Aplicativo exemplo Scaffold',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start, 
          children: [
            Center(
              child: Text(
                'Elemento 1 ',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Center(
              child: Text(
                'Elemento 2 ',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Center(
              child: Text(
                'Elemento 3',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
