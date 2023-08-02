# HTTP Requests
HTTP Requests Package Inspired By `Python Requests Module` Which Is Used For To Make HTTP Request And Get Response. You Can Use It In `Rest API`

## Install

Add this to your package's pubspec.yaml file:

```yaml
dependencies:
  http_requests: ^3.0.0
```

## Usage
Start by importing the library
```dart
import 'package:http_requests/http_requests.dart';
```

Let's make a simple example of GET Method
```dart
Response response = await HttpRequests.get('https://www.secanonm.com');
print(response.statusCode);
```


Let's make a simple example of POST Method
```dart
Map<String,String> data = {'key' : 'value'};
Response response = await HttpRequests.post('https://www.secanonm.in',data:data);
print(response.status);
```


Let's make a simple example of Exception Handling
```dart
Map<String,String> data = {'key' : 'value'};
try {
    Response response = await HttpRequests.post('https://secanonm.in',data:data);

  print(response.json);
  } on HttpRequestException catch (e) {
    print(e.code);
  }
print(r.status);
```

### Some Methods
just like in python's request module, the `Response` object has this functionality

- `r.statusCode` - the response status code
- `r.status` - the response status code with description of code like `200 - success`
- `r.url` - the URL in the request 
- `r.headers` - the response headers 
- `r.success` - a boolean. `true` indicates that the request was a great success 
- `r.hasError` - a boolean. `true` indicates that the request was not a great success 
- `r.bytes` - return the body in the response as a list of bytes 
- `r.contentLength` - return the response content length
- `r.contentType` - return the response content type `application/json`, 
- `r.isRedirect` - return the Redirection Status is `true` or `false`
- `r.content` - return the body in the response as a string (with UTF-8)
- `r.response` - return the body in the response as a string (without UTF-8 {take default})
- `r.json` - recodes the body in the response and returns the result (dynamic type)
- `r.throwForStatus()` - will throw an exception if the response `statusCode` is not a great success.


### HTTP REQUESTS Exception
- `invalid url` - it occurs when you provide invalid url
- `timeout` - it occurs when request timeout `default 10 seconds`
- `unreachable` - it occurs when host is unreachable due to slow or no internet