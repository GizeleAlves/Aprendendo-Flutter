import 'package:flutter/material.dart';

void main() {
  int valor = 10;
  runApp(MyApp(
    title: 'Aplicativo Olá Mundo!',
    valor: valor,
  ));
  valor++; //o valor não atualiza pois está sendo utilizado o stateless widget
  /*runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aplicativo Olá Mundo', style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Text(
            'Olá Mundo!',
            style: TextStyle(fontSize: 50, color: Colors.black),
          ),
        ),
      ),
    ),
  );
  */
}

//StatelessWidget é utilizado quando temos uma tela estática
class MyApp extends StatelessWidget {
  final String title;
  final int valor;
  const MyApp({Key? key, this.title = '', required this.valor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            this.title,
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Text(
            'O valor é ' + this.valor.toString(),
            style: TextStyle(fontSize: 50, color: Colors.black),
          ),
        ),
      ),
    );
  }
}

/*class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'My App',
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}
*/