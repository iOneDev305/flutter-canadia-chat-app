import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

void printDebug(String message) {
  if(kDebugMode) {
    print(message);
  }
}

class ScreenSize {
  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}