import 'dart:ui';
import 'package:flutter/cupertino.dart';

class AppColorsConst {
  static const primaryColor = Color(0xFFFF7643);
  static const primaryLightColor = Color(0xFFFFECDF);
  static const primaryGradientColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
  );
}
