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
        drawer: Drawer(
          child: Column(children: [
            ListTile(
              leading: Icon(Icons.account_balance_wallet_rounded, color: Colors.brown,),
              title: Text('Menu Lateral'),
              subtitle: Text('Selecione a opção no menu'),
              onTap: () => print('Clicou menu'),
            ),

            ListTile(
              leading: Icon(Icons.edit, color: Colors.blue,),
              title: Text('Editar Cadastro'),
              subtitle: Text('Selecione a opção no menu'),
              onTap: () => print('Editando'),
            ),
            
          ],),
        ),
        appBar: AppBar(
          title: Center(
              child: Text(
            'Aplicativo Exemplo Menu Drawer',
            style: TextStyle(color: Colors.white),
          ),),iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Text('Página do usuário'),
        ),
      ),
    );
  }
}
