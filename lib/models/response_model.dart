class ResponseModel<T> {
  final T? response;
  final bool success;
  final String? message;

  ResponseModel({required this.response, required this.success, this.message});
}