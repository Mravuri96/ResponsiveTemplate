import 'package:ResponsiveTemplate/Layout/Desktop/DesktopLayout.dart';
import 'package:ResponsiveTemplate/Layout/Mobile/MobileLayout.dart';
import 'package:ResponsiveTemplate/Layout/Tablet/TabletLaout.dart';
import 'package:ResponsiveTemplate/ResponsiveHelper/Responsive.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => isDesktop(context)
            ? const DesktopLayout()
            : isTablet(context) ? const TabletLayout() : const MobileLayout(),
      ),
    );
  }
}
