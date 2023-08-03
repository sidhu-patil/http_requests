# HTTP Requests
HTTP Requests Package is inspired by the `Python Requests Module`, which is used to make HTTP requests and get responses. You can use it in your `Rest API`.

## Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  http_requests: ^3.1.0
```

## Usage

Start by importing the library:

```dart
import 'package:http_requests/http_requests.dart';
```

Let's make a simple example of a GET Method:

```dart
HttpResponse response = await HttpRequests.get('https://www.google.in');
print(response.statusCode);
```

Let's make a simple example of a POST Method:

```dart
Map<String, String> data = {'key': 'value'};
HttpResponse response = await HttpRequests.post('https://www.google.in', data: data);
print(response.status);
```

Let's make a simple example of Exception Handling:

```dart
Map<String, String> data = {'key': 'value'};
try {
    HttpResponse response = await HttpRequests.post('https://www.google.in', data: data);
    print(response.json);
} on HttpRequestException catch (e) {
    print(e.code);
}
print(response.status);
```

### Available Methods

Similar to Python's `request` module, the `HttpResponse` object has the following functionality:

- `response.statusCode`: the response status code.
- `response.status`: the response status code with a description e.g., `200 - success`.
- `response.url`: the URL in the request.
- `response.headers`: the response headers as a `Map<String, String>`.
- `response.success`: a boolean. `true` indicates that the request was successful.
- `response.hasError`: a boolean. `true` indicates that the request encountered an error.
- `response.bytes`: returns the body in the response as a list of bytes.
- `response.contentLength`: returns the response content length.
- `response.contentType`: returns the response content type (`application/json`, etc.).
- `response.isRedirect`: returns `true` if the response is a redirection, otherwise `false`.
- `response.content`: returns the body in the response as a string (encoded in UTF-8).
- `response.response`: returns the body in the response as a string (without specifying UTF-8, takes the default).
- `response.json`: decodes the body in the response and returns the result as a `Map<dynamic, dynamic>`.
- `response.throwForStatus()`: will throw an exception if the response `statusCode` indicates an error.
- `response.persistentConnection`: a boolean. `true` indicates that the persistent connection.
- `response.reasonPhrase`: the response status description, e.g., `OK`.

### HTTP REQUESTS Exception

- `INVALID_URL`: Occurs when you provide an invalid URL.
- `TIMEOUT`: Occurs when the request times out (default timeout is 10 seconds).
- `UNREACHABLE`: Occurs when the host is unreachable due to slow or no internet connection.
- `INVALID_JSON`: Occurs when the body content is not JSON but you use the `json` method on `HttpResponse`.
