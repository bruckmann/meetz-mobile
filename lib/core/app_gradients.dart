import 'package:flutter/material.dart';
import 'package:meetz/core/core.dart';

class AppGradients {
  static final linear = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        AppColors.green700,
        AppColors.green600,
        AppColors.green500,
        AppColors.green200,
      ],
      stops: [
        0.1,
        0.4,
        0.8,
        0.9,
      ]);
}
