import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'exception.dart';
import 'model/interface.dart';

/// Simply Class To Handle HTTP Response
class HttpResponse implements HttpResponseInterface {
  http.Response _response;
  HttpResponse(this._response);

  /// Simply Return Response code
  @override
  bool get hasError =>
      (400 <= _response.statusCode) && (_response.statusCode >= 100);

  /// It return success status of request ,if request is complete than it return true else return false
  @override
  bool get success => !hasError;

  /// It return HTTP status Code with description like `200 - OK`
  @override
  String get status => "${_response.statusCode} - ${_response.reasonPhrase}";

  /// It return HTTP status Code of response like 200 , 301, 502
  @override
  int get statusCode => _response.statusCode;

  /// It return Content Type of response like json or text
  @override
  String get contentType => _response.headers['content-type'] ?? "undefine";

  /// It return content of response
  @override
  String get content => convert.utf8.decode(bytes, allowMalformed: true);

  /// It return json response in format of Map { like in python dict }
  @override
  Map get json {
    Map _dumpJson;
    try {
      _dumpJson = convert.jsonDecode(_response.body) as Map;
    } catch (e) {
      _dumpJson = {"status": "failed"};
      throw HttpRequestException(
        code: 'INVALID_JSON',
        message: 'The response output is not in a json format',
      );
    }
    return _dumpJson;
  }

  /// It return response header in format of Map { like in python dict }
  @override
  Map<String, String> get headers => _response.headers;

  /// It return content of response simply
  @override
  String get response => _response.body;

  /// It return content length of response simply
  @override
  int? get contentLength => _response.contentLength;

  /// It return Redirection Status of response simply
  @override
  bool get isRedirect => _response.isRedirect;

  /// It return bytes comprising the body of response
  @override
  List<int> get bytes => _response.bodyBytes;

  /// It return Persistent Connection Status `True or False`
  @override
  bool get persistentConnection => _response.persistentConnection;

  /// It return HTTP status description like `OK`,`Move Permanently`
  @override
  String? get reasonPhrase => _response.reasonPhrase;
}
