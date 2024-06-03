import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  Uri uri = Uri.https('jsonplaceholder.typicode.com', '/todos/');
  final future = http.get(uri);
  future.then((response) {
    if (response.statusCode == 200) {
      print('Página carregada ok.');

      // print(json.decode(response.body));
      /*Map<String, dynamic> dados = json.decode(response.body);
      print(dados);
      print(dados['title']);*/

      var list = json.decode(response.body) as List;
      list.forEach((element) {
        print(element['title']);
      });
    } else {
      print('Deu erro!');
    }
  });
}
