import 'dart:convert';

import 'package:http/http.dart' as http;

// Using Via CEP API to mock HTTP Requests for testing
class viaCep {
  Future<Map<dynamic, dynamic>> getDataByCEP(String cep) async {
    try {
      var source = Uri.parse('https://viacep.com.br/ws/$cep/json/');
      var response = await http.get(source);
      var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
      return decodedResponse;
    } catch (e) {
      var responseError = {'failed': true, 'error': e};
      return responseError;
    }
  }
}
