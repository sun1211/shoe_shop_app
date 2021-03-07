import 'package:flutter/material.dart';
import 'package:shoe_shop_app/constants.dart';

AppBar HomeAppBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: Icon(
      FlutterIcons.menu,
      color: Colors.black,
    ),
    actions: [
      Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Icon(
          FlutterIcons.search,
          color: Colors.black,
        ),
      )
    ],
  );
}
