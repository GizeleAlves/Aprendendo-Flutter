import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(nome: 'Pedro'));
}

class MyApp extends StatefulWidget {
  final String nome; //Aqui ficam os parâmetros que não irão mudar

  const MyApp({super.key, this.nome = ''});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int salario = 7000; //Aqui ficam os parâmetros que podem mudar

  void aumentarSalario(int valor) {
    setState(() {
      this.salario = this.salario + valor;
    });
  }

  void diminuirSalario(int valor) {
    setState(() {
      this.salario = this.salario - valor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          print('clicou');

          diminuirSalario(200);
          /*
          setState(() {
            //essa função é usada para atualizar a tela quando há alguma alteração no estado do widget
            salario = salario + 100;

          });
          */
          print('Novo salário $salario');
        },
        child: Text(
          'O salário de ${widget.nome} é $salario',
          textDirection: TextDirection
              .ltr, //Observe que para acessar o valor do  widget, usamos "widget.nome" e para acessar o valor do state usamos apenas $nome
        ),
      ),
    );
  }
}
