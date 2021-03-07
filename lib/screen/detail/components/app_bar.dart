import 'package:flutter/material.dart';
import 'package:shoe_shop_app/constants.dart';

AppBar DetailAppBar(BuildContext context, Color color) {
  return AppBar(
    backgroundColor: color,
    elevation: 0,
    leading: IconButton(
      icon: Icon(FlutterIcons.left_open_1),
      onPressed: () {
        Navigator.of(context).pop();
      },
    ),
    title: Text("CATEGORIES"),
    actions: [
      Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Icon(
          FlutterIcons.search,
          color: Colors.white,
        ),
      )
    ],
  );
}
