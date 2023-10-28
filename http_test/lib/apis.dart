import 'package:http/http.dart' as http;

Future<void> getData({required String number}) async {
  final _response =
      await http.get(Uri.parse('http://numbersapi.com/$number?json'));
  print(_response.body);
}
