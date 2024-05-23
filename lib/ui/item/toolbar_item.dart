import 'package:flutter/material.dart';

class ToolbarItemModel {
  final String text;
  final GestureTapCallback? onTap;

  ToolbarItemModel({
    required this.text,
    this.onTap,
  });
}
