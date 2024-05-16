import 'package:developerfect_app/data/api/network_client.dart';
import 'package:developerfect_app/utils/configs.dart';
import 'package:developerfect_app/utils/log/dio_logger.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class MainBinding extends Bindings {
  @override
  Future<void> dependencies() async {
    ///provide super controller
    /// provide Dio
    await Get.putAsync<Dio>(() async {
      var dio = Dio();
      dio.options = BaseOptions(
        baseUrl: 'https://jsonplaceholder.typicode.com/',
        connectTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 20),
        sendTimeout: const Duration(seconds: 20),
      );

      if (showApiInterceptor) {
        dio.interceptors.add(dioLoggerInterceptor(tag: 'Plevo-REST:'));
      }
      return dio;
    }, permanent: true);
    // Ensure HTTPProvider is put properly
    if (!Get.isRegistered<HTTPProvider>()) {
      Get.put(HTTPProvider(), permanent: true);
    }
  }
}
