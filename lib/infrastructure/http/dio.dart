import 'package:dio/dio.dart';

Dio getDio() {
  Dio dio = Dio();
  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (RequestOptions options, handler) async {
        return handler.next(options);
      },
    ),
  );
  return dio;
}
