import 'package:http_requests/src/http_response.dart';

import 'exception.dart';
import 'package:http/http.dart' as http;
part 'model/function.dart';

class HttpRequests {
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
          code: 'timeout',
          message:
              'A connection timeout ( The server at $url is taking too long to response. ) The requested site did not response to a connection request and http request has stopped waiting for a reply',
        );
      });
    } on FormatException {
      throw HttpRequestException(
        code: 'invalid url',
        message:
            'The requested url is invalid ( Please enter valid url or hostname ).',
      );
    } catch (e) {
      throw HttpRequestException(
        code: 'unreachable',
        message:
            'A network error (such as interrupted connection or host $url unreachable ) has occurred.',
      );
    }
    return HttpResponse(response);
  }

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
          code: 'timeout',
          message:
              'A connection timeout ( The server at $url is taking too long to response. ) The requested site did not response to a connection request and http request has stopped waiting for a reply',
        );
      });
    } on FormatException {
      throw HttpRequestException(
        code: 'invalid url',
        message:
            'The requested url is invalid ( Please enter valid url or hostname ).',
      );
    } catch (e) {
      throw HttpRequestException(
        code: 'unreachable',
        message:
            'A network error (such as interrupted connection or host $url unreachable ) has occurred.',
      );
    }
    return HttpResponse(response);
  }

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
          code: 'timeout',
          message:
              'A connection timeout ( The server at $url is taking too long to response. ) The requested site did not response to a connection request and http request has stopped waiting for a reply',
        );
      });
    } on FormatException {
      throw HttpRequestException(
        code: 'invalid url',
        message:
            'The requested url is invalid ( Please enter valid url or hostname ).',
      );
    } catch (e) {
      throw HttpRequestException(
        code: 'unreachable',
        message:
            'A network error (such as interrupted connection or host $url unreachable ) has occurred.',
      );
    }
    return HttpResponse(response);
  }

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
          code: 'timeout',
          message:
              'A connection timeout ( The server at $url is taking too long to response. ) The requested site did not response to a connection request and http request has stopped waiting for a reply',
        );
      });
    } on FormatException {
      throw HttpRequestException(
        code: 'invalid url',
        message:
            'The requested url is invalid ( Please enter valid url or hostname ).',
      );
    } catch (e) {
      throw HttpRequestException(
        code: 'unreachable',
        message:
            'A network error (such as interrupted connection or host $url unreachable ) has occurred.',
      );
    }
    return HttpResponse(response);
  }

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
          code: 'timeout',
          message:
              'A connection timeout ( The server at $url is taking too long to response. ) The requested site did not response to a connection request and http request has stopped waiting for a reply',
        );
      });
    } on FormatException {
      throw HttpRequestException(
        code: 'invalid url',
        message:
            'The requested url is invalid ( Please enter valid url or hostname ).',
      );
    } catch (e) {
      throw HttpRequestException(
        code: 'unreachable',
        message:
            'A network error (such as interrupted connection or host $url unreachable ) has occurred.',
      );
    }
    return HttpResponse(response);
  }

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
          code: 'timeout',
          message:
              'A connection timeout ( The server at $url is taking too long to response. ) The requested site did not response to a connection request and http request has stopped waiting for a reply',
        );
      });
    } on FormatException {
      throw HttpRequestException(
        code: 'invalid url',
        message:
            'The requested url is invalid ( Please enter valid url or hostname ).',
      );
    } catch (e) {
      throw HttpRequestException(
        code: 'unreachable',
        message:
            'A network error (such as interrupted connection or host $url unreachable ) has occurred.',
      );
    }
    return HttpResponse(response);
  }
}
