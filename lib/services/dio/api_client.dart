import 'package:dio/dio.dart' show Dio, DioException, Response, BaseOptions;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart' show GetxService;
import 'package:rota/services/exceptions/api_error_handler.dart';
import 'package:rota/services/dio/authorization_interceptor.dart';
import 'package:rota/utils/constants/app_constants.dart';

class ApiClient extends GetxService {
  final Dio dio;

  ApiClient()
      : dio = Dio(
          BaseOptions(
              baseUrl: AppConstants.baseUrl,
              connectTimeout: const Duration(seconds: 5),
              receiveTimeout: const Duration(seconds: 3),
              headers: {
                'Content-Type': 'application/json',
              }),
        ) {
    dio.interceptors.add(AuthorizationInterceptor(const FlutterSecureStorage()));
  }

  Future<Response> get(String path) async {
    try {
      return await dio.get(path);
    } on DioException catch (e) {
      throw ApiErrorHandler.getErrorMessage(e);
    }
  }

  Future<Response> post(String path, {dynamic data}) async {
    try {
      return await dio.post(path, data: data);
    } on DioException catch (e) {
      throw ApiErrorHandler.getErrorMessage(e);
    }
  }

// Diğer HTTP metodları için benzer fonksiyonlar ekleyebilirsiniz.
}
