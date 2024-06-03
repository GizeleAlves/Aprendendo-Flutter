import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  Uri uri = Uri.https('jsonplaceholder.typicode.com', '/todos/1');
  final future = http.get(uri);
  future.then((response) {
    if (response.statusCode == 200) {
      print('Página carregada ok.');

      print(json.decode(response.body));
      Map<String, dynamic> dados = json.decode(response.body);
      //print(dados);

      /*Todo todo = Todo(
          dados['userId'], dados['id'], dados['title'], dados['completed']); */

      //print(dados['title']);

      Todo todo = Todo.fromJson(dados);
      //print(todo.title);
      print(todo.toJson());
    } else {
      print('Deu erro!');
    }
  });
}

class Todo {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Todo(this.userId, this.id, this.title, this.completed);

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(json['userId'], json['id'], json['title'], json['completed']);
  }

  Map<String, dynamic> toJson() => {
    'userId': this.userId,
    'id': this.id,
    'title': this.title,
    'completed': this.completed,
  };
  
}
