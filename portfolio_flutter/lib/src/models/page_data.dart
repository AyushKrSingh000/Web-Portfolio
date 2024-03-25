// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class PageData {
  final String pageId;
  final String pageName;
  final String pageIcon;
  final VoidCallback? onTap;
  const PageData({
    required this.pageId,
    required this.pageName,
    required this.pageIcon,
    this.onTap,
  });
}
