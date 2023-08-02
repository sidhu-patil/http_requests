part of '../http_method.dart';

String mapToCookie(Map<String, String> cookies) =>
    cookies.entries.map((e) => '${e.key}=${e.value}').join('; ');

Uri _urlValidator(url) {
  var parseUrl = Uri();
  try {
    if (!url.startsWith('http')) {
      url = 'https://$url';
    }
    parseUrl = Uri.parse(url);
  } on FormatException {
    throw HttpRequestException(
      code: 'invalid url',
      message:
          'The requested url is invalid ( Please enter valid url or hostname ).',
    );
  }
  return parseUrl;
}
