import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http_test/model_class/number_resp.dart';

Future<NumberResp> getData({required String number}) async {
  final response =
      await http.get(Uri.parse('http://numbersapi.com/$number?json'));
  final bodyAsJson = jsonDecode(response.body) as Map<String, dynamic>;
  final data = NumberResp.fromJson(bodyAsJson);
  return data;
}
