import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Argumentos {
  final int id;
  final String nome;

  Argumentos(this.id, this.nome);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Tela1(),
        Tela2.routeName: (context) => Tela2(),
        //'/tela2': (context) => Tela2(),
      },
    );
  }
}

class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    int valor = 1;

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

                Navigator.pushNamed(context, '/tela2',
                    arguments: Argumentos(valor, 'Teste  $valor'));
                valor++;

                /*Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Tela2();
                    },
                  ),
                );*/
              },
            ),
          ),
        ),
      ),
    );
  }
}

class Tela2 extends StatelessWidget {
  static const routeName = '/tela2';

  const Tela2({super.key});

  @override
  Widget build(BuildContext context) {
    final argumentos = ModalRoute.of(context)!.settings.arguments as Argumentos;

    return Container(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Tela 2 ' + argumentos.nome,
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
