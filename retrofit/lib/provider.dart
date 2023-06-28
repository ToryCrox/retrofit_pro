

import 'package:dio/dio.dart';

abstract class RetrofitProvider {
  
  /// 提供dio
  Dio get dio;
  
  /// 提供protobuf转换
  ProtoBufConverter get protoBufConverter;
}

/// protubuf转换
typedef ProtoBufConverter<T> = T Function(dynamic data);



class DioRetrofitProvider implements RetrofitProvider {
  DioRetrofitProvider({
    required this.dio,
    ProtoBufConverter? protoBufConverter,
  }): _protoBufConverter = protoBufConverter;

  @override
  final Dio dio;

  final ProtoBufConverter? _protoBufConverter;

  @override
  ProtoBufConverter get protoBufConverter => _protoBufConverter ?? (throw UnsupportedError('protoBufConverter is not supported'));
}