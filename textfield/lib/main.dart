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
          title: Center(child: Text('Página de Login')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Insira seus dados'),
            Text('E-mail'),
            TextField(),
            Text('Senha'),
            TextField(),
            Text('Esqueceu sua senha?'),
            ElevatedButton(
              onPressed: () {
                print('Entrar');
              },
              child: Text('Entrar'),
            ),
          ],
        ),
      ),
    );
  }
}
