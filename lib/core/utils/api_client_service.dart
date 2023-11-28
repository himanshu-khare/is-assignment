import 'package:dio/dio.dart';
import 'package:is_assignment/core/constants/constants.dart';
import 'package:is_assignment/data/datasources/remote/api_client.dart';

class ApiClientService {
  static final ApiClient _apiService = ApiClient(_getDio());

  static ApiClient getApiService() {
    return _apiService;
  }

  static Dio _getDio() {
    final dio = Dio(
      BaseOptions(
        contentType: 'application/json',
        headers: {'Authorization': 'Bearer ${ApiConstants.token}'},
      ),
    );
    return dio;
  }
}
