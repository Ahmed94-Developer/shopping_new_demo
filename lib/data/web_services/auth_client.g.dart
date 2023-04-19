// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _AuthClient implements AuthClient {
  _AuthClient(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://www.hyper.se3dawy.com/api/v1/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Login> setAuth(
    name,
    password,
    player_id,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'name': name,
      'password': password,
      'player_id': player_id,
    };
    final _result =
        await _dio.fetch<Map<String, dynamic>>(_setStreamType<Login>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'application/x-www-form-urlencoded',
    )
            .compose(
              _dio.options,
              'login',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Login.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
