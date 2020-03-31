import 'dart:math';

import 'package:flutter/material.dart';

class RightDrawer extends StatelessWidget {
  const RightDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        elevation: 1,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ListTile(
                title: const Text(
                  'Category',
                  textScaleFactor: 1.5,
                ),
                subtitle: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (_, i) => ListTile(
                      leading: Checkbox(
                        value: i % 2 == 0 ? true : false,
                        onChanged: null,
                      ),
                      title: const Text('Category')),
                  separatorBuilder: (_, i) => Divider(
                    color: Colors.black,
                    thickness: 1,
                    endIndent: 8,
                    indent: 8,
                  ),
                  itemCount: 5,
                ),
              ),
              Divider(
                color: Colors.black,
                thickness: 1,
              ),
              ListView.separated(
                shrinkWrap: true,
                itemBuilder: (_, i) => ListTile(
                  leading: Text(
                    i.toString(),
                  ),
                  title: Slider.adaptive(
                      value: Random.secure().nextDouble(), onChanged: null),
                ),
                separatorBuilder: (_, i) => Divider(
                  color: Colors.black,
                  thickness: 1,
                  endIndent: 8,
                  indent: 8,
                ),
                itemCount: 3,
              ),
            ],
          ),
        ),
      );
}
