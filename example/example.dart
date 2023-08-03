import 'package:http_requests/http_requests.dart';

void main() async {
  // Get Method
  HttpResponse r = await HttpRequests.get("https://www.google.in");
  print(r.status);

  // Post Method With Headers And Data
  Map<String, String> header = {
    'Host': 'www.google.in',
    'User-Agent':
        'Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0',
    'Accept':
        'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8',
    'Accept-Language': 'en-US,en;q=0.5',
    'Accept-Encoding': 'gzip, deflate, br',
    'Connection': 'keep-alive'
  };
  Map<String, String> query = {"name": "sidhu patil"};
  HttpResponse req = await HttpRequests.post("https://www.google.in",
      headers: header, data: query);
  print(req.response);
}
