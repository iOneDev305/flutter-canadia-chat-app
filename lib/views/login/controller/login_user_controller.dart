import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:my_app/services/api/api_error.dart';
import 'package:my_app/services/api/api_manager.dart';

class LoginUserController extends GetxController {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // Observables for the from  state
  final RxBool isLoading = false.obs;
  final RxString errorMessage = ''.obs;
  final RxString username = ''.obs;
  final RxString password = ''.obs;

  final ApiManager _apiManager = ApiManager(Dio());

  @override
  void onInit() {
    super.onInit();

    //Listen to Change  Inset Username and Password
    usernameController.addListener(() => {});

    passwordController.addListener(() => {});

    // Create the function to login
    Future<void> login() async {
      if (usernameController.text.isEmpty || passwordController.text.isEmpty) {
        errorMessage.value = 'Please enter both username and password.';
        return;
      }
      isLoading.value = true;
      errorMessage.value = '';

      final pragms = {
        'username': usernameController.text,
        'password': passwordController.text
      };

      try {
        final response = await _apiManager.postUserLogin(pragms);

        if(response != null && response.code == ApiErrors.ok) {
          final token = response.data?['token']?.toString();
          

        }else {
          errorMessage.value = 'UID not found in login response.';
        }
      } catch(e) {
           errorMessage.value = 'Network error: ${e}';
      }
    }
  }

  @override
  void onClose() {
    usernameController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
