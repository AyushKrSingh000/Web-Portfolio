// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

showSuccessMessage(String message) => _showToast(
      message,
      Colors.black,
    );

showErrorMessage(String message) => _showToast(
      message,
      Colors.red,
      toastLength: message.length > 80 ? Toast.LENGTH_LONG : Toast.LENGTH_SHORT,
    );

_showToast(
  String message,
  Color backgroundColor, {
  Toast? toastLength,
}) {
  Fluttertoast.showToast(
    msg: message,
    textColor: const Color(0xff011627),
    webBgColor: "white",
    backgroundColor: backgroundColor,
    toastLength: Toast.LENGTH_LONG,
  );
}
