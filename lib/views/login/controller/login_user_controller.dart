
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LoginUserController extends GetxController{
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // Observables for the from  state
  final RxBool isLoading = false.obs;
  final RxString errorMessage = ''.obs;
  final RxString username = ''.obs;
  final RxString password = ''.obs;


}