import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/svg.dart' as ImageType;
import 'package:get/get_instance/get_instance.dart';
import 'package:get/route_manager.dart';
import 'package:my_app/utils/constant/color.dart';
import 'package:my_app/views/login/controller/login_user_controller.dart';

class LoginUserView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginUerViewState();
} 

class _LoginUerViewState extends State<LoginUserView> {
  final LoginUserController controller = Get.put(LoginUserController());
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final mediaQuery = MediaQuery.of(context);
    final hasSoftNavigationBar = mediaQuery.padding.bottom > 0;

    return Scaffold(
      backgroundColor: Primitives.blue4,

      body: LayoutBuilder(
        builder: (context, constraints) {
          return GestureDetector(

          );
        },
        ),
    );
  }

  Widget _buildLogo(double screenWidth) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

      ],
    );
  }

}