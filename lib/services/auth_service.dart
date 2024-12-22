import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:rota/models/response_model.dart';
import 'package:rota/models/token_model.dart';
import 'package:rota/services/dio/api_client.dart';

// TODO: Singleton yapmaya gerek var mı sor.
class AuthService extends GetxService {
  final _apiClient = Get.find<ApiClient>();

  Future<ResponseModel<TokenModel>> login(String username, String password) async {
    var response = _apiClient.post(
      '/api/identity/authenticate',
      data: {'username': username, 'password': password},
    ).then((response) {
      if (response.statusCode == 200) {
        return ResponseModel<TokenModel>(
          response: TokenModel.fromJson(response.data),
          success: true,
        );
      } else {
        if (kDebugMode) {
          print('Login failed: ${response.statusCode}');
        }
        return ResponseModel<TokenModel>(
          response: null,
          success: false,
          message: 'Login failed',
        );
      }
    }).catchError((e) {
      if (kDebugMode) {
        print('Error: $e');
      }
      return ResponseModel<TokenModel>(
        response: null,
        success: false,
        message: e,
      );
    });

    return response;
  }
}
