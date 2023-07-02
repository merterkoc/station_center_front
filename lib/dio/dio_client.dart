import 'package:dio/dio.dart';
import 'package:station_center/const/http_const.dart';
import 'package:station_center/dio/progress_manager.dart';

class DioClient extends LoaderManager {
  DioClient._internal();

  static final DioClient _instance = DioClient._internal();

  factory DioClient() => _instance;
  final Dio _dio = Dio()
    ..options.baseUrl = HttpConstants.BASE_URL
    ..options.connectTimeout = HttpConstants.CONNECT_TIMEOUT
    ..options.receiveTimeout = HttpConstants.RECEIVE_TIMEOUT
    ..interceptors.add(LogInterceptor(responseBody: true, request: true));

  Future<Response> get(String url, {required bool loader}) async {
    try {
      if (loader) loaderIncrease();
      await Future.delayed(const Duration(seconds: 4));
      Response response = await _dio.get(url);
      return response;
    } on DioException {
      rethrow;
    } finally {
      if (loader) loaderDecrease();
    }
  }

  Future<Response> post(String url, dynamic data,
      {required bool loader}) async {
    try {
      if (loader) loaderIncrease();
      Response response = await _dio.post(url, data: data);
      return response;
    } on DioException {
      rethrow;
    } finally {
      if (loader) loaderDecrease();
    }
  }

  Future<Response> put(String url, dynamic data, {required bool loader}) async {
    try {
      if (loader) loaderIncrease();
      Response response = await _dio.put(url, data: data);
      return response;
    } on DioException {
      rethrow;
    } finally {
      if (loader) loaderDecrease();
    }
  }

  Future<Response> delete(String url, {required bool loader}) async {
    try {
      if (loader) loaderIncrease();
      Response response = await _dio.delete(url);
      return response;
    } on DioException {
      rethrow;
    } finally {
      if (loader) loaderDecrease();
    }
  }
}
