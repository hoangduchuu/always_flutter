// ignore_for_file: dead_code

import 'package:developerfect_app/utils/pref_utils.dart';
import 'package:dio/dio.dart' as dio;
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../custom_exception.dart';

class DummyHTTPProvider {
  final dio.Dio _dio = Get.find<dio.Dio>(tag: 'dummy');

  void updateBaseUrl() {
    _dio.options.baseUrl = 'https://dummyjson.com';
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
      var opt = Options(
        headers: {
          'Authorization': 'Bearer ${appPrefs.userToken}',
        },
      );
      var response = await _dio.get(path,
          queryParameters: query,
          options: options ?? opt,
          cancelToken: cancelToken,
          onReceiveProgress: onReceiveProgress);
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
      var opt = Options(
        headers: {
          'Authorization': 'Bearer ${appPrefs.userToken}',
        },
      );
      var response = await _dio.post(path,
          options: options ?? opt,
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
