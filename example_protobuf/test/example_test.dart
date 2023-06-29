import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mock_web_server/mock_web_server.dart';
import 'package:retrofit/retrofit.dart';
import 'package:retrofit_example_protobuf/example.dart';
import 'package:retrofit_example_protobuf/protobuf/generated/user_info.pb.dart';
import 'package:test/test.dart';

import '../lib/task_data.dart';

late MockWebServer _server;
late RestClient _client;
final _headers = {'Content-Type': 'application/json'};
final _pbHeaders = {HttpHeaders.contentTypeHeader:"application/x-protobuf", };
final dispatcherMap = <String, MockResponse>{};
late Dio _dio;

void main() {
  setUp(() async {
    _server = MockWebServer();
    // _server.dispatcher = (HttpRequest request) async {
    //   var res = dispatcherMap[request.uri.path];
    //   if (res != null) {
    //     return res;
    //   }
    //   return new MockResponse()..httpCode = 404;
    // };
    await _server.start();
    _dio = Dio(BaseOptions(
      //responseType: ResponseType.bytes,
      baseUrl: _server.url,
      //headers: _pbHeaders,
    ));
    _dio.interceptors.add(LogInterceptor(responseBody: true));
    _dio.interceptors.add(DateTimeInterceptor());
    _client = RestClient(DioRetrofitProvider(dio: _dio), baseUrl: _server.url);
  });

  tearDown(() {
    _server.shutdown();
  });

  test('test getUserInfoByPath', () async {
    print(demoUserRepBytes.runtimeType.toString() + ', ' + demoUserRepBytes.length.toString());
    print(demoUserRepBytes);
    _server.enqueue(
        body: jsonEncode(demoUserRep.toProto3Json()),);

    //final response = await _dio.get('/getUserInfoByPath');
    //expect(response, isNotNull);
    //print(utf8.decode(response.data).runtimeType.toString());
    final userInfoRes = await _client.getUserInfoByPath('11000002');
    expect(userInfoRes, isNotNull);
    expect(userInfoRes, demoUserRep);
  });

}

class DateTimeInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters = options.queryParameters.map((key, value) {
      if (value is DateTime) {
        //may be change to string from any you use object
        return MapEntry(key, value.toString());
      } else {
        return MapEntry(key, value);
      }
    });
    handler.next(options);
  }
}
