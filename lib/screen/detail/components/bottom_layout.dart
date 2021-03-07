import 'package:flutter/material.dart';
import 'package:shoe_shop_app/constants.dart';
import 'package:shoe_shop_app/models/shoe_model.dart';
import 'package:shoe_shop_app/size_config.dart';

Widget BottomLayout(ShoeModel shoeModel) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
    width: SizeConfig.screenWidth,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          spreadRadius: 1,
          blurRadius: 10,
        )
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "PRICE",
              style: TextStyle(
                color: Colors.black26,
              ),
            ),
            Text(
              "\$${shoeModel.price.toInt()}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 50,
          ),
          decoration: BoxDecoration(
            color: kGreenColor,
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
          ),
          child: Text(
            "ADD CART",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    ),
  );
}
