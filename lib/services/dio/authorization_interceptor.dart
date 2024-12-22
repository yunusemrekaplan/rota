import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:rota/services/token_service.dart';

class AuthorizationInterceptor extends Interceptor {
  final FlutterSecureStorage secureStorage;

  AuthorizationInterceptor(this.secureStorage);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    String? token = await Get.find<TokenService>().getToken();
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      // TODO: Token yenileme işlemi veya logout yönlendirmesi yapılabilir
      // Token yenileme işlemi veya logout yönlendirmesi yapılabilir
      // Örneğin: Navigator.pushReplacementNamed(context, '/login');
    }
    super.onError(err, handler);
  }
}