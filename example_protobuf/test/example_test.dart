import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mock_web_server/mock_web_server.dart';
import 'package:protobuf/protobuf.dart';
import 'package:retrofit/retrofit.dart';
import 'package:retrofit_example_protobuf/example.dart';
import 'package:retrofit_example_protobuf/protobuf/generated/user_info.pb.dart';
import 'package:retrofit_example_protobuf/type_util.dart';
import 'package:test/test.dart';

import '../lib/task_data.dart';

late HttpServer _server;
late RestClient _client;
final _headers = {'Content-Type': 'application/json'};
final _pbHeaders = {
  HttpHeaders.contentTypeHeader: "application/x-protobuf",
};
final dispatcherMap = <String, MockResponse>{};
late Dio _dio;

String _serverUrl = 'http://localhost:4040/';

Future<HttpServer> createServer() async {
  final address = InternetAddress.loopbackIPv4;
  const port = 4040;
  return await HttpServer.bind(address, port);
}

Future<void> handleRequests(HttpServer server) async {
  print('Listening on localhost:${server.port}');
  await for (HttpRequest request in server) {
    print('Got request for ${request.uri.path}');
    if (request.uri.path.startsWith('/getUserInfo')) {
      request.response.headers.contentType =
          ContentType('application', 'x-protobuf');
      request.response.add(demoUserRepBytes);
      await request.response.close();
    } else {
      request.response.statusCode = HttpStatus.notFound;
      await request.response.close();
    }
  }
}

LoadResult<T> defaultProtoCover<T extends GeneratedMessage>(
    Response response, T pbModel) {
  int code = TypeUtil.parseInt(response.headers['Result-code']?.firstOrNull);
  String msg = response.headers['Result-msg']?.firstOrNull ?? '';
  if (code != 0) {
    return LoadResult.error(code, msg);
  }
  bool isPb = response.requestOptions.contentType == 'application/x-protobuf';
  try {
    if (isPb) {
      pbModel.mergeFromBuffer(response.data);
      return LoadResult.success(pbModel);
    } else {
      final json = response.data is String ? jsonDecode(response.data) : response.data;
      pbModel.mergeFromJsonMap(json);
    }
  } catch (e) {
    
    return LoadResult.error(LoadResult.codeParseError, 'response.requestOptions.uri: $e');
  }
  return LoadResult.success(pbModel);
}

void main() {
  setUp(() async {
    _server = await createServer();
    handleRequests(_server);

    _dio = Dio(BaseOptions(
      //responseType: ResponseType.bytes,
      baseUrl: _serverUrl,
      //headers: _pbHeaders,
    ));
    _dio.interceptors.add(LogInterceptor(responseBody: true));
    _dio.interceptors.add(DateTimeInterceptor());
    _client = RestClient(
      Retrofit(
        dio: _dio,
        protoConverter: defaultProtoCover,
      ), baseUrl: _serverUrl,
    );
  });

  tearDown(() {});

  test('test getUserInfoByPath', () async {
    print(demoUserRepBytes);

    //final response = await _dio.get('/getUserInfoByPath');
    //expect(response, isNotNull);
    //print(utf8.decode(response.data).runtimeType.toString());
    final userInfoRes = await _client.getUserInfoByPath('11000002');
    expect(userInfoRes, isNotNull);
    expect(userInfoRes.data, demoUserRep);
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
    options.responseType = ResponseType.bytes;
    handler.next(options);
  }
}
