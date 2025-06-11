import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:my_app/models/api_model.dart';
import 'package:my_app/services/api/api_error.dart';
import 'package:my_app/services/api/api_service.dart';
import 'package:my_app/utils/constant/constant.dart';

class ApiManager {
  final ApiService _apiService;

  ApiManager(Dio dio) : _apiService = ApiService(dio);

  //Comman Response handle method
  ApiModel? __handleResponse(Response response) {
    printDebug('API response data type: ${response.data.runtimeType}');
    printDebug("API response data: ${response.data}");

    if (response.statusCode == ApiErrors.ok) {
      final responseData = response.data is String
          ? jsonDecode(response.data as String) as Map<String, dynamic>
          : response.data as Map<String, dynamic>;

      // Validate tha the resposne data constain the required fiels
      if (responseData.containsKey('code') && responseData.containsKey('msg')) {
        return ApiModel.fromJson(responseData);
      } else {
        throw Exception('Invalide response formart');
      }
    } else {
      throw Exception('Error: ${response.statusCode}');
    }
  }

  Future<ApiModel?> postUserLogin(Map<String, dynamic> params) async {
    try {
      final response = await _apiService.postUserLogin(params);
      return __handleResponse(response);
    } catch (e) {
      printDebug('API call error: ${e}');
      rethrow;
    }
  }

}
