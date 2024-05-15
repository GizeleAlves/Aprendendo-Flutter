import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tela1(),
    );
  }
}

class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Tela 1',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.blueAccent,
          ),
          body: Center(
            child: ElevatedButton(
              child: Text('Ir para a tela 2'),
              onPressed: () {
                print('botão tela 1 acionado');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Tela2();
                    },
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class Tela2 extends StatelessWidget {
  const Tela2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Tela 2',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.red,
          ),
          body: Center(
            child: ElevatedButton(
              child: Text('Retornar a tela 1'),
              onPressed: () {
                print('botão tela 2 acionado');
                /* Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Tela2();
                    },
                  ),
                ); */
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ),
    );
  }
}
