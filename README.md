# Apklis API - Dart

API for Apklis (Cuban Android App Store) implemented in Dart.

Supports [Dio package](https://pub.dev/packages/dio) and [Http package](https://pub.dev/packages/http). In addition to the packages that inherit from these.

## Getting Started

Initialize an instance of the ApklisApi class by passing it the package name as a parameter:

```dart
var apklisApi = ApklisApi(packageName);
```

You can also choose to pass a `Dio` instance or `Client` instance to the `dioClient` and `httpClient` parameters. If both are passed the httpClient will be used.

```dart
var apklisApi = ApklisApi(
    packageName,
    dioClient: Dio(),
    httpClient: Client(),
  );
```

To make the request and obtain the information, use the `get` method that returns a Future.

```dart
var info = await apklisApi.get();
```

If you want to use a specific library, you can use the `getWithDio` and/or `getWithHttp` methods.

```dart
var infoWithDio = await apklisApi.getWithDio();
var infoWithClient = await apklisApi.getWithHttp();
```

Also using the `getWithDio` and/or `getWithHttp` methods you can use a specific instance of `Dio` and `Client` respectively.

```dart
var infoWithDio = await apklisApi.getWithDio(dioClient: Dio());
var infoWithClient = await apklisApi.getWithHttp(httpClient: Client());
```
