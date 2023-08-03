## 3.1.0
- Improved Documentation.
- Added new exception `INVALID_JSON` to handle cases of invalid JSON format.

## 3.0.0
- Added support for `put`, `patch`, and `delete` methods.
- Added `persistentConnection` and `reasonPhrase` methods in the `HttpResponse`.
### Breaking changes
- Renamed `Response` class to `HttpResponse` to reduce conflicts with `HTTP Package`. 
- Dart 3.0 is now required.

## 2.6.0
- Added support for the `head` method.

## 2.5.0
- Added Error Handling.
- Improved Cookie Feature.
### Breaking changes
- Renamed `status` method to `statusCode`.
- `statusCode` now returns the status code along with its description.

## 2.0.1
- Stable version.

## 1.5.0
- If there's no internet connection, the library now returns a JSON object with `{status: failed}`. @depreciated

## 1.4.0
- Improved the Json Function.

## 1.3.0
- Added Cookie Feature.

## 1.2.0
- Added Request Timeout Feature.

## 1.0.1
- Added API References to make it easier to learn.

## 1.0.0
- Improved Error Handling.

## 0.0.4 
- Added Documentation.
- More Examples.

## 0.0.3 
- Improved and added more functions to make it easier to use.

## 0.0.2
- Improved and fixed bugs.

## 0.0.1
- Beta version.