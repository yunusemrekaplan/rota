import 'package:dio/dio.dart';
import 'package:rota/utils/enums/user_friendly_messages.dart';

class ApiErrorHandler {
  static String getErrorMessage(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return UserFriendlyMessages.connectionTimeout;
      case DioExceptionType.sendTimeout:
        return UserFriendlyMessages.sendTimeout;
      case DioExceptionType.receiveTimeout:
        return UserFriendlyMessages.receiveTimeout;
      case DioExceptionType.badResponse:
        return _handleHttpResponseError(error.response);
      case DioExceptionType.cancel:
        return UserFriendlyMessages.requestCancelled;
      case DioExceptionType.unknown:
        return UserFriendlyMessages.unexpectedError;
      default:
        return UserFriendlyMessages.unexpectedError;
    }
  }

  static String _handleHttpResponseError(Response? response) {
    if (response == null) {
      return UserFriendlyMessages.noResponseReceived;
    }
    switch (response.statusCode) {
      case 400:
        return UserFriendlyMessages.badRequest;
      case 401:
        return UserFriendlyMessages.unauthorized;
      case 403:
        return UserFriendlyMessages.forbidden;
      case 404:
        return UserFriendlyMessages.notFound;
      case 500:
        return UserFriendlyMessages.internalServerError;
      default:
        return "Received invalid status code: ${response.statusCode}";
    }
  }
}