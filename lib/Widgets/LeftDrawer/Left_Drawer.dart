import 'package:flutter/material.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        elevation: 1,
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: const Icon(
                Icons.account_circle,
                size: 56,
              ),
              accountName: Text(
                'Lorem Ipsum',
              ),
              accountEmail: Text(
                'lorem.ipsum@example.org',
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            SideBarList(),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            InkWell(
              onTap: () => print(
                'PressedSettings Icon',
              ),
              child: Material(
                type: MaterialType.card,
                elevation: 2,
                color: Colors.red,
                child: ListTile(
                  leading: const Icon(
                    Icons.settings,
                  ),
                  title: const Text('Settings'),
                ),
              ),
            ),
          ],
        ),
      );
}

class SideBarList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) => Divider(
          color: Colors.black,
          thickness: 1,
          endIndent: 8,
          indent: 8,
        ),
        itemCount: 5,
        itemBuilder: (_, index) => ListTile(
          leading: Icon(Icons.home),
          title: Text(
            'NavBar Item',
          ),
        ),
      ),
    );
  }
}
