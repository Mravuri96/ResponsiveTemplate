import 'package:ResponsiveTemplate/Widgets/AppBar/MyAppBar.dart';
import 'package:ResponsiveTemplate/Widgets/LeftDrawer/Left_Drawer.dart';
import 'package:ResponsiveTemplate/Widgets/RightDrawer/RightDrawer.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: MyAppBar().appBar,
        endDrawer: RightDrawer(),
        body: Row(
          children: <Widget>[
            LeftDrawer(),
            Expanded(
              child: Container(
                color: Colors.greenAccent,
              ),
            ),
          ],
        ),
      );
}
