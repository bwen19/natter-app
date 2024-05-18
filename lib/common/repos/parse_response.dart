import 'dart:convert';
import 'package:http/http.dart' as http;

class CustomException implements Exception {
  const CustomException(this.message);

  final String message;

  @override
  String toString() => message;
}

final class AppCustomException extends CustomException {
  const AppCustomException() : super('Something wrong happened');
}

Map<String, dynamic> parseResponse(http.Response response) {
  if (response.statusCode == 200) {
    return response.body.isEmpty ? {} : jsonDecode(response.body);
  } else {
    throw CustomException(response.body);
  }
}
