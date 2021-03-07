import 'package:flutter/material.dart';
import 'package:shoe_shop_app/models/shoe_model.dart';
import 'package:shoe_shop_app/screen/detail/detail_screen.dart';
import 'dart:math' as math;

import 'background.dart';

class ShoeCard extends StatelessWidget {
  const ShoeCard({
    Key key,
    @required this.shoeList,
  }) : super(key: key);

  final ShoeModel shoeList;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => DetailScreen(
              shoeModel: shoeList,
            ),
          ),
        );
      },
      child: Container(
        width: 230,
        margin: EdgeInsets.only(right: 16),
        child: Stack(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(top: 25),
                child: Background(
                  shoeModel: shoeList,
                  width: 230,
                )),
            Positioned(
              bottom: 130,
              right: 10,
              child: Hero(
                tag: "hero${shoeList.imgPath}",
                child: Transform.rotate(
                  angle: -math.pi / 7,
                  child: Image(
                    width: 220,
                    image: AssetImage("assets/${shoeList.imgPath}"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
