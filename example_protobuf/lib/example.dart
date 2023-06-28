import 'dart:convert' show jsonEncode;
import 'dart:io';

import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

import 'api_result.dart';
import 'protobuf/index.dart';

part 'example.g.dart';

@RestApi(baseUrl: 'https://5d42a6e2bc64f90014a56ca0.mockapi.io/api/v1/')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/getUserInfo/{id}')
  Future<UserInfoResp> getUserInfoByPath(@Path('id') String id);
  
  @GET('/getUserInfo')
  Future<UserInfoResp> getUserInfoByQuery(@Query('id') String id);
  
}

