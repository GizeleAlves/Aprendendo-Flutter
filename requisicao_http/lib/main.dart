import 'dart:async';
import 'package:http/http.dart' as http;

void main() {
  final uri = Uri.https('www.exemple.comm', '/api/', {'q': 'flutter', 'parametro2': 'valor2'});
  print(uri);
  final future = http.get(uri);
  future.then((response) {
    if (response.statusCode == 200) {
      print('A página foi carregada com sucesso.');
      print(response.body);
    } else if (response.statusCode == 301) {
      print('Página movida permanentemente.');
    } else if (response.statusCode == 404) {
      print('Página nã encontrada.');
    } else if (response.statusCode == 500) {
      print('Erro no servidor');
    } else {
      print(response.statusCode);
    }
  });

  future.catchError((onError) => print('Erro!'));
  //future.whenComplete(() => print('Future Completo!'));
}
