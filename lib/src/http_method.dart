import 'package:http_requests/src/http_response.dart';

import 'exception.dart';
import 'package:http/http.dart' as http;
part 'model/function.dart';

/// Simply Class To Send HTTP Requests
class HttpRequests {
  /// Sends an HTTP GET request.
  static get(String url,
      {Map<String, String>? headers,
      Map<String, String>? cookies,
      int timeout = 10}) async {
    http.Response response;
    Uri parseUrl = _urlValidator(url);

    if (cookies != null) {
      if (headers != null) {
        headers['Cookie'] = mapToCookie(cookies);
      } else {
        headers = {'Cookie': mapToCookie(cookies)};
      }
    }

    try {
      response = await http
          .get(parseUrl, headers: headers)
          .timeout(Duration(seconds: timeout), onTimeout: () {
        throw HttpRequestException(
          code: 'TIMEOUT',
          message:
              'A connection timeout ( The server at $url is taking too long to response. ) The requested site did not response to a connection request and http request has stopped waiting for a reply',
        );
      });
    } on FormatException {
      throw HttpRequestException(
        code: 'INVALID_URL',
        message:
            'The requested url is invalid ( Please enter valid url or hostname ).',
      );
    } catch (e) {
      throw HttpRequestException(
        code: 'UNREACHABLE',
        message:
            'A network error (such as interrupted connection or host $url unreachable ) has occurred.',
      );
    }
    return HttpResponse(response);
  }

  /// Sends an HTTP POST request.
  static post(String url,
      {Map<String, String>? headers,
      Map<String, dynamic>? data,
      Map<String, String>? cookies,
      int timeout = 10}) async {
    http.Response response;
    Uri parseUrl = _urlValidator(url);

    if (cookies != null) {
      if (headers != null) {
        headers['Cookie'] = mapToCookie(cookies);
      } else {
        headers = {'Cookie': mapToCookie(cookies)};
      }
    }

    try {
      response = await http
          .post(parseUrl, body: data, headers: headers)
          .timeout(Duration(seconds: timeout), onTimeout: () {
        throw HttpRequestException(
          code: 'TIMEOUT',
          message:
              'A connection timeout ( The server at $url is taking too long to response. ) The requested site did not response to a connection request and http request has stopped waiting for a reply',
        );
      });
    } on FormatException {
      throw HttpRequestException(
        code: 'INVALID_URL',
        message:
            'The requested url is invalid ( Please enter valid url or hostname ).',
      );
    } catch (e) {
      throw HttpRequestException(
        code: 'UNREACHABLE',
        message:
            'A network error (such as interrupted connection or host $url unreachable ) has occurred.',
      );
    }
    return HttpResponse(response);
  }

  /// Sends an HTTP PUT request.
  static put(String url,
      {Map<String, String>? headers,
      Map<String, dynamic>? data,
      Map<String, String>? cookies,
      int timeout = 10}) async {
    http.Response response;
    Uri parseUrl = _urlValidator(url);

    if (cookies != null) {
      if (headers != null) {
        headers['Cookie'] = mapToCookie(cookies);
      } else {
        headers = {'Cookie': mapToCookie(cookies)};
      }
    }

    try {
      response = await http
          .put(parseUrl, body: data, headers: headers)
          .timeout(Duration(seconds: timeout), onTimeout: () {
        throw HttpRequestException(
          code: 'TIMEOUT',
          message:
              'A connection timeout ( The server at $url is taking too long to response. ) The requested site did not response to a connection request and http request has stopped waiting for a reply',
        );
      });
    } on FormatException {
      throw HttpRequestException(
        code: 'INVALID_URL',
        message:
            'The requested url is invalid ( Please enter valid url or hostname ).',
      );
    } catch (e) {
      throw HttpRequestException(
        code: 'UNREACHABLE',
        message:
            'A network error (such as interrupted connection or host $url unreachable ) has occurred.',
      );
    }
    return HttpResponse(response);
  }

  /// Sends an HTTP PATCH request.
  static patch(String url,
      {Map<String, String>? headers,
      Map<String, dynamic>? data,
      Map<String, String>? cookies,
      int timeout = 10}) async {
    http.Response response;
    Uri parseUrl = _urlValidator(url);

    if (cookies != null) {
      if (headers != null) {
        headers['Cookie'] = mapToCookie(cookies);
      } else {
        headers = {'Cookie': mapToCookie(cookies)};
      }
    }

    try {
      response = await http
          .patch(parseUrl, body: data, headers: headers)
          .timeout(Duration(seconds: timeout), onTimeout: () {
        throw HttpRequestException(
          code: 'TIMEOUT',
          message:
              'A connection timeout ( The server at $url is taking too long to response. ) The requested site did not response to a connection request and http request has stopped waiting for a reply',
        );
      });
    } on FormatException {
      throw HttpRequestException(
        code: 'INVALID_URL',
        message:
            'The requested url is invalid ( Please enter valid url or hostname ).',
      );
    } catch (e) {
      throw HttpRequestException(
        code: 'UNREACHABLE',
        message:
            'A network error (such as interrupted connection or host $url unreachable ) has occurred.',
      );
    }
    return HttpResponse(response);
  }

  /// Sends an HTTP DELETE request.
  static delete(String url,
      {Map<String, String>? headers,
      Map<String, dynamic>? data,
      Map<String, String>? cookies,
      int timeout = 10}) async {
    http.Response response;
    Uri parseUrl = _urlValidator(url);

    if (cookies != null) {
      if (headers != null) {
        headers['Cookie'] = mapToCookie(cookies);
      } else {
        headers = {'Cookie': mapToCookie(cookies)};
      }
    }

    try {
      response = await http
          .delete(parseUrl, body: data, headers: headers)
          .timeout(Duration(seconds: timeout), onTimeout: () {
        throw HttpRequestException(
          code: 'TIMEOUT',
          message:
              'A connection timeout ( The server at $url is taking too long to response. ) The requested site did not response to a connection request and http request has stopped waiting for a reply',
        );
      });
    } on FormatException {
      throw HttpRequestException(
        code: 'INVALID_URL',
        message:
            'The requested url is invalid ( Please enter valid url or hostname ).',
      );
    } catch (e) {
      throw HttpRequestException(
        code: 'UNREACHABLE',
        message:
            'A network error (such as interrupted connection or host $url unreachable ) has occurred.',
      );
    }
    return HttpResponse(response);
  }

  /// Sends an HTTP HEAD request.
  static head(String url,
      {Map<String, String>? headers,
      Map<String, String>? cookies,
      int timeout = 10}) async {
    http.Response response;
    Uri parseUrl = _urlValidator(url);

    if (cookies != null) {
      if (headers != null) {
        headers['Cookie'] = mapToCookie(cookies);
      } else {
        headers = {'Cookie': mapToCookie(cookies)};
      }
    }

    try {
      response = await http
          .head(parseUrl, headers: headers)
          .timeout(Duration(seconds: timeout), onTimeout: () {
        throw HttpRequestException(
          code: 'TIMEOUT',
          message:
              'A connection timeout ( The server at $url is taking too long to response. ) The requested site did not response to a connection request and http request has stopped waiting for a reply',
        );
      });
    } on FormatException {
      throw HttpRequestException(
        code: 'INVALID_URL',
        message:
            'The requested url is invalid ( Please enter valid url or hostname ).',
      );
    } catch (e) {
      throw HttpRequestException(
        code: 'UNREACHABLE',
        message:
            'A network error (such as interrupted connection or host $url unreachable ) has occurred.',
      );
    }
    return HttpResponse(response);
  }
}
