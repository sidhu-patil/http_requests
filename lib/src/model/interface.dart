abstract class HttpResponseInterface {
  bool get hasError;

  bool get success;

  String get status;

  int get statusCode;

  String get contentType;

  String get content;

  Map get json;

  Map<String, String> get headers;

  String get response;

  int? get contentLength;

  bool get isRedirect;

  List<int> get bytes;

  bool get persistentConnection;

  String? get reasonPhrase;
}
