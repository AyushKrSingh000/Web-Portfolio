// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_flutter/src/constants/enums.dart';
import 'package:portfolio_flutter/src/logic/repositories/theme_repository.dart';

abstract class ColorUtils {
  static MaterialColor generateMaterialColor(Color color) {
    return MaterialColor(color.value, {
      50: tintColor(color, 0.9),
      100: tintColor(color, 0.8),
      200: tintColor(color, 0.6),
      300: tintColor(color, 0.4),
      400: tintColor(color, 0.2),
      500: color,
      600: shadeColor(color, 0.1),
      700: shadeColor(color, 0.2),
      800: shadeColor(color, 0.3),
      900: shadeColor(color, 0.4),
    });
  }

  static int tintValue(int value, double factor) =>
      max(0, min((value + ((255 - value) * factor)).round(), 255));

  static Color tintColor(Color color, double factor) => Color.fromRGBO(
      tintValue(color.red, factor),
      tintValue(color.green, factor),
      tintValue(color.blue, factor),
      1);

  static int shadeValue(int value, double factor) =>
      max(0, min(value - (value * factor).round(), 255));

  static Color shadeColor(Color color, double factor) => Color.fromRGBO(
      shadeValue(color.red, factor),
      shadeValue(color.green, factor),
      shadeValue(color.blue, factor),
      1);

  /// returns light theme or dark theme color based on the theme
  static Color getColor(WidgetRef ref, AppCustomColor color) {
    final appTheme = ref.watch(
        themeRepositoryProvider.select((appTheme) => appTheme as AppTheme));
    switch (appTheme) {
      case AppTheme.darkVSCode:
        return color.darkVsCode;
      case AppTheme.ayuDark:
        return color.ayuDark;
      case AppTheme.dracula:
        return color.dracula;
      case AppTheme.githubDark:
        return color.githubDark;
      case AppTheme.lightVSCode:
        return color.lightVSCode;
      case AppTheme.xcodeModern:
        return color.xcodeModern;
      default:
        return color.nightOwl;
    }
  }
}

/// models light theme and dark theme colors
class AppCustomColor {
  final Color githubDark;
  final Color dracula;
  final Color ayuDark;
  final Color nightOwl;
  final Color xcodeModern;
  final Color lightVSCode;
  final Color darkVsCode;

  const AppCustomColor({
    required this.githubDark,
    required this.dracula,
    required this.ayuDark,
    required this.nightOwl,
    required this.xcodeModern,
    required this.lightVSCode,
    required this.darkVsCode,
  });
}
