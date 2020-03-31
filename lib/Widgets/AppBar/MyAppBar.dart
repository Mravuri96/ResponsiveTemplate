import 'package:flutter/material.dart';

class MyAppBar {
  final AppBar appBar = AppBar(
    automaticallyImplyLeading: true,
    elevation: 0,
    centerTitle: false,
    title: const Text('Title'),
    actions: <Widget>[
      IconButton(
        icon: const Icon(Icons.search),
        tooltip: 'Search',
        onPressed: () {},
      ),
      IconButton(
        icon: const Icon(Icons.menu),
        tooltip: 'menu',
        onPressed: () {},
      ),
    ],
  );
}
