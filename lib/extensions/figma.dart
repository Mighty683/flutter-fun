import 'package:flutter/material.dart';

extension FigmaInt on int {
  int figma() {
    double screenWidth =
        MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.width;
    return ((this / 360.0) * screenWidth).floor();
  }
}

extension FigmaDouble on double {
  double figma() {
    double screenWidth =
        MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.width;
    return (this / 360.0) * screenWidth;
  }
}
