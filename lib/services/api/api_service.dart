import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:my_app/config/config.dart';
import 'package:my_app/services/api/api_endpoint.dart';
import 'api_endpoint.dart';

class ApiService {
  final Dio _dio;

  ApiService(this._dio) {
    _dio.options.baseUrl = Config.baseUrl;
    _dio.options.headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json, charset =utf8', 
      Config.apiHeader: Config.apiKey
    };

    //Timeout settings with Duration
    _dio.options.connectTimeout = const Duration(seconds: 60);
    _dio.options.receiveTimeout = const Duration(seconds: 60);
  }

  //Helper Method to convert map params to FormData
  FormData _convertToFormData(Map<String, dynamic> params) {
    return FormData.fromMap(params);
  }

  // API methods
  Future<Response> postUserLogin(Map<String, dynamic> params) async {
    return _dio.post(ApiEndpoint.postUserLogin,
        data: _convertToFormData(params));
  }



}