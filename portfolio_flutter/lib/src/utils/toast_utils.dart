// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

showSuccessMessage(String message) => _showToast(
      message,
      "green",
    );

showErrorMessage(String message) => _showToast(
      message,
      'red',
      toastLength: message.length > 80 ? Toast.LENGTH_LONG : Toast.LENGTH_SHORT,
    );

_showToast(
  String message,
  String backgroundColor, {
  Toast? toastLength,
}) {
  Fluttertoast.showToast(
    msg: message,
    textColor: Colors.white,
    webBgColor: backgroundColor,
    // backgroundColor: r,
    toastLength: Toast.LENGTH_LONG,
  );
}
