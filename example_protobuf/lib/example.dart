import 'dart:convert' show jsonEncode;
import 'dart:io';

import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

import 'package:retrofit_example_protobuf/protobuf/index.dart';

part 'example.g.dart';

@RestApi(baseUrl: 'https://5d42a6e2bc64f90014a56ca0.mockapi.io/api/v1/')
abstract class RestClient {
  factory RestClient(Retrofit retrofit, {String baseUrl,}) = _RestClient;

  @GET('/getUserInfo/{id}')
  Future<LoadResult<UserInfoResp>> getUserInfoByPath(@Path('id') String id);
  
  @GET('/getUserInfo')
  Future<LoadResult<UserInfoResp>> getUserInfoByQuery(@Query('id') String id);

  @POST('/postUserInfo')
  Future<LoadResult<UserInfoResp>> postUserInfo(@Body() Map<String, dynamic> body);
}

