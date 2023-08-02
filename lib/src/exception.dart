class HttpRequestException implements Exception {
  String message;
  String code;
  HttpRequestException({required this.code, required this.message});

  @override
  String toString() {
    String output = '[HTTP_REQUESTS - $code ] $message';
    return output;
  }
}
