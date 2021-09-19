import 'package:logger/logger.dart';
import 'package:matsui/auth/authentication.dart';
import 'package:matsui/api/rest_client.dart';
import 'package:dio/dio.dart' hide Headers;

class Example {
  final logger = Logger();
  final RestClient restClient;
  
  Example() : restClient = RestClient(Dio(BaseOptions(headers: {"Authorization": Authentication().token})));

  void request1() {
    restClient.getJokes().then((it) => logger.i(it));
  }
}
