import 'package:flutter/material.dart';

class ScreenUtil {
  static ScreenUtil instance = ScreenUtil();

  double width;
  double height;

  static double? _screenWidth;
  static double? _screenHeight;

  ScreenUtil({
    this.width = 1080,
    this.height = 1920,
  });

  static ScreenUtil getInstance() {
    return instance;
  }

  void init(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    _screenWidth = mediaQuery.size.width;
    _screenHeight = mediaQuery.size.height;
  }

  get scaleWidth => _screenWidth! / instance.width;
  get scaleHeight => _screenHeight! / instance.height;
  setWidth(double width) => width * scaleWidth;
  setHeight(double height) => height * scaleHeight;
}
