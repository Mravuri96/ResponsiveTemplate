import 'package:ResponsiveTemplate/Widgets/AppBar/MyAppBar.dart';
import 'package:ResponsiveTemplate/Widgets/LeftDrawer/Left_Drawer.dart';
import 'package:ResponsiveTemplate/Widgets/RightDrawer/RightDrawer.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: MyAppBar().appBar,
        drawer: LeftDrawer(),
        endDrawer: RightDrawer(),
        body: Container(
          color: Colors.lightBlueAccent,
        ),
      );
}
