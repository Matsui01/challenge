import 'package:logger/logger.dart';
import 'package:matsui/task.dart';
import 'package:retrofit/retrofit.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:dio/dio.dart' hide Headers;

import 'home/mock_adapter.dart';

part 'example.g.dart';

@RestApi(baseUrl: "https://api.chucknorris.io/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/jokes/random')
  Future<Joke> getJokes({@DioOptions() Options? options});

  // @GET("/jokes/categories")
  // Future<List<Joke>> getCategories();
}

@JsonSerializable()
class Joke {
  String id;
  String value;
  // String? avatar;
  // String? createdAt;

  Joke({
    required this.id,
    required this.value,
  });

  factory Joke.fromJson(Map<String, dynamic> json) => _$JokeFromJson(json);
  Map<String, dynamic> toJson() => _$JokeToJson(this);
}


// final logger = Logger();
// void test2() {
//   final dio = Dio(); // Provide a dio instance
//   dio.options.headers["Demo-Header"] = "demo header"; // config your dio headers globally
//   final client = RestClient(dio);

//   client.getCategories().then((it) => logger.i(it));
// }

// void test() {
//   final dio = Dio();
//   dio.httpClientAdapter = MockAdapter();

//   dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
//     print(options.extra);
//     print(options.baseUrl);
//     print(options.method);
//     print(options.headers);
//     handler.next(options);
//   }));
//   final api = RestClient(dio, baseUrl: MockAdapter.mockBase);
//   api.getJokes().then((it) {
//     print(it.length);
//   });
// }
