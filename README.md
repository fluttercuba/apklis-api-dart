# Apklis API - Dart

API for [Apklis](https://www.apklis.cu) (Cuban Android App Store) implemented in Dart.

Supports [Dio package](https://pub.dev/packages/dio) and [Http package](https://pub.dev/packages/http). In addition to the packages that inherit from these.

[Dart package](https://pub.dev/packages/apklis_api)

## Getting Started

Initialize an instance of the ApklisApi class:

```dart
var apklisApi = ApklisApi();
```

You can also choose to pass a `Dio` instance or `Client` instance to the `dioClient` and `httpClient` parameters. If both are passed the httpClient will be used.

```dart
var apklisApi = ApklisApi(
    dioClient: Dio(),
    httpClient: Client(),
  );
```

To make the request and obtain the information, use the `get` method that returns a Future.

```dart
var info = await apklisApi.get(['com.example.app1', 'com.example.app2']);
```

If you want to use a specific library, you can use the `getWithDio` and/or `getWithHttp` methods.

```dart
var infoWithDio = await apklisApi.getWithDio(['com.example.app1', 'com.example.app2']);
var infoWithClient = await apklisApi.getWithHttp(['com.example.app1', 'com.example.app2']);
```

Also using the `getWithDio` and/or `getWithHttp` methods you can use a specific instance of `Dio` and `Client` respectively.

```dart
var infoWithDio = await apklisApi.getWithDio(['com.example.app1', 'com.example.app2'], dioClient: Dio());
var infoWithClient = await apklisApi.getWithHttp(['com.example.app1', 'com.example.app2'], httpClient: Client());
```
