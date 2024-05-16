// ignore_for_file: dead_code

import 'dart:convert';

import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';

class HTTPProvider {
  final dio.Dio _dio = Get.find<dio.Dio>();

  void updateBaseUrl() {
    _dio.options.baseUrl = 'https://jsonplaceholder.typicode.com/';
  }

  Future<dynamic> makeGet(
    String path, {
    Map<String, dynamic>? query,
    dio.Options? options,
    dio.CancelToken? cancelToken,
    dio.ProgressCallback? onReceiveProgress,
    bool? ignoreError,
  }) async {
    try {
      var response = await _dio.get(path,
          queryParameters: query, options: options, cancelToken: cancelToken, onReceiveProgress: onReceiveProgress);
      return response.data;
    } catch (e) {
      _handleException(e);
    }
  }

  Future<dynamic> makePost(String path,
      {data,
      Map<String, dynamic>? queryParameters,
      dio.Options? options,
      dio.CancelToken? cancelToken,
      dio.ProgressCallback? onSendProgress,
      dio.ProgressCallback? onReceiveProgress}) async {
    try {
      var response = await _dio.post(path,
          options: options,
          data: data,
          queryParameters: queryParameters,
          cancelToken: cancelToken,
          onReceiveProgress: onReceiveProgress);
      return response.data;
    } catch (e) {
      _handleException(e);
    }
  }

  void _handleException(Object e) {
    if (e is dio.DioException) {
      CustomException error = CustomException(
        message: e.message,
        statusCode: e.response?.statusCode.toString(),
      );
      throw error;
    } else if (e is CustomException) {
      throw e;
    } else {
      CustomException error = CustomException(
        message: e.toString(),
      );
      throw error;
    }
  }
}

//CustomException
class CustomException implements Exception {
  final String? message;
  final String? statusCode;

  CustomException({this.message, this.statusCode});

  @override
  String toString() {
    return '$runtimeType(message: $message, statusCode: $statusCode)';
  }

  String? get errorMessage {
    return message;
  }
}
