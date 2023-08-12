import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

export 'dio.dart';
export 'http.dart';


typedef ProtoConverter<T> = LoadResult<T> Function<T>(Response response, T pbModel);


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