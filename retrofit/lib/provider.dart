

import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';

abstract class RetrofitProvider {
  
  /// 提供dio
  Dio get dio;
  
  /// 提供protobuf转换
  ProtoBufConverter? get protoBufConverter;

  /// json解析
  JsonDecodeCallback get jsonDecodeCallback => jsonDecode;
  
}

/// protubuf转换
typedef ProtoBufConverter<T> = T Function(T pbModel, dynamic data);


typedef JsonDecodeCallback = FutureOr<dynamic> Function(String);


class DioRetrofitProvider extends RetrofitProvider {
  DioRetrofitProvider({
    required this.dio,
    ProtoBufConverter? protoBufConverter,
  }): _protoBufConverter = protoBufConverter;

  @override
  final Dio dio;

  final ProtoBufConverter? _protoBufConverter;

  @override
  ProtoBufConverter? get protoBufConverter => _protoBufConverter;
}