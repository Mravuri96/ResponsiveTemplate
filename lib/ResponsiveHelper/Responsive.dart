import 'package:flutter/material.dart';

enum DisplayType {
  mobile,
  tablet,
  desktop,
}

const num _mobileMaxBreakPoint = 700, _tabletMaxBreakPoint = 1300;

DisplayType displayTypeOf(BuildContext context) =>
    MediaQuery.of(context).size.width > _tabletMaxBreakPoint
        ? DisplayType.desktop
        : MediaQuery.of(context).size.width < _tabletMaxBreakPoint &&
                MediaQuery.of(context).size.width > _mobileMaxBreakPoint
            ? DisplayType.tablet
            : DisplayType.mobile;

/// Returns a boolean if we are in a display of [DisplayType.mobile]
bool isMobile(context) => displayTypeOf(context) == DisplayType.mobile;

/// Returns a boolean if we are in a display of [DisplayType.tablet]
bool isTablet(context) => displayTypeOf(context) == DisplayType.tablet;

/// Returns a boolean if we are in a display of [DisplayType.desktop]
bool isDesktop(context) => displayTypeOf(context) == DisplayType.desktop;