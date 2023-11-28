import 'dart:ui' as ui;
import 'package:flutter/material.dart';

MediaQueryData mediaQueryData = MediaQueryData.fromView(ui.window);
const num FIGMA_DESIGN_WIDTH = 414;
const num FIGMA_DESIGN_HEIGHT = 896;
const num FIGMA_DESIGN_STATUS_BAR = 0;

extension ResponsiveExtension on num {
  double get _width {
    return mediaQueryData.size.width;
  }

  num get _height {
    final num statusBar = mediaQueryData.viewPadding.top;
    final num bottomBar = mediaQueryData.viewPadding.bottom;
    final num screenHeight = mediaQueryData.size.height - statusBar - bottomBar;
    return screenHeight;
  }

  double get h => (this * _width) / FIGMA_DESIGN_WIDTH;

  double get v =>
      (this * _height) / (FIGMA_DESIGN_HEIGHT - FIGMA_DESIGN_STATUS_BAR);

  double get adaptSize {
    final height = v;
    final width = h;
    return height < width ? height.toDoubleValue() : width.toDoubleValue();
  }

  double get fSize => adaptSize;
}

extension FormatExtension on double {
  double toDoubleValue({int fractionDigits = 2}) {
    return double.parse(toStringAsFixed(fractionDigits));
  }
}
