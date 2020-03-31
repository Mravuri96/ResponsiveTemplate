import 'package:ResponsiveTemplate/Widgets/AppBar/MyAppBar.dart';
import 'package:ResponsiveTemplate/Widgets/LeftDrawer/Left_Drawer.dart';
import 'package:ResponsiveTemplate/Widgets/RightDrawer/RightDrawer.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: MyAppBar().appBar,
        body: Row(
          children: <Widget>[
            LeftDrawer(),
            Expanded(
              child: Container(
                color: Colors.orangeAccent,
              ),
            ),
            RightDrawer(),
          ],
        ),
      );
}
