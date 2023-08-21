import 'package:dio/dio.dart';
import 'package:protobuf/protobuf.dart';
import 'package:retrofit/http.dart';

export 'dio.dart';
export 'http.dart';


typedef ProtoConverter = LoadResult<T> Function<T extends GeneratedMessage>(Response<dynamic>, T);


class Retrofit {
  
  final Dio dio;

  final ProtoConverter? _protoConverter;
  
  const Retrofit({
    required this.dio,
    ProtoConverter? protoConverter,
  }): _protoConverter = protoConverter;


  ProtoConverter get protoConverter {
    if (_protoConverter == null) {
      throw Exception('pb converter is null');
    }
    return _protoConverter!;
  }
}