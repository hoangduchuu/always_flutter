import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

extension XResponsiveBuildContext on BuildContext {
  bool get isDisplayLargeThanTablet => ResponsiveBreakpoints.of(this).largerThan(TABLET);
  bool get isDisplayLargeThanMobile => ResponsiveBreakpoints.of(this).largerThan(MOBILE);
  bool get isDisplaySmallerThanDesktop => ResponsiveBreakpoints.of(this).smallerThan(DESKTOP);
}

extension XResponsiveFontSize on BuildContext {
  double get titleScaleFactor => isDisplayLargeThanTablet ? 1 : 0.8;
}

extension XMediaQuery on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
}
