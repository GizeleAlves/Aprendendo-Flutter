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
  List<String> listaProdutos = [];
  @override
  Widget build(BuildContext context) {
    //listaProdutos.add('Produto 1');
    //listaProdutos.add('Produto 2');
    //listaProdutos.add('Produto 3');

    for (int i = 1; i <= 100; i++) {
      listaProdutos.add('Produto $i');
    }
    return Container(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'List View',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.blueAccent,
          ),
          body: ListView.builder(
            itemCount: listaProdutos.length,
            itemBuilder: (context, indice) {
              return ListTile(
                title: Text('Ítem: ${listaProdutos[indice]}'),
              );
            },
          ),
        ),
      ),
    );
  }
}
