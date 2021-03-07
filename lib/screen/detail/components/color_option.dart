import 'package:flutter/material.dart';

Widget ColorOption(Color color) {
  return Container(
    width: 20,
    height: 20,
    margin: EdgeInsets.only(right: 8),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.all(
        Radius.circular(50),
      ),
    ),
  );
}
