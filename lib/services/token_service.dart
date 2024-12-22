import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class TokenService extends GetxService {
  final _storage = const FlutterSecureStorage();

  Future<void> saveToken(String token) async {
    await _storage.write(key: 'access_token', value: token);
  }

  Future<String?> getToken() async {
    return await _storage.read(key: 'access_token');
  }

  Future<void> deleteToken() async {
    await _storage.delete(key: 'access_token');
  }

  Future<bool> isTokenValid() async {
    String? token = await getToken();
    if (token == null) {
      return false;
    }

    return !JwtDecoder.isExpired(token);
  }
}
