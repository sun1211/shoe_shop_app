import 'package:flutter/material.dart';
import 'package:shoe_shop_app/components/app_clipper.dart';
import 'package:shoe_shop_app/constants.dart';
import 'package:shoe_shop_app/models/shoe_model.dart';
import 'dart:math' as math;

import 'package:shoe_shop_app/size_config.dart';

import 'bottom_layout.dart';
import 'color_option.dart';
import 'rate.dart';

class Body extends StatelessWidget {
  final ShoeModel shoeModel;
  const Body({Key key, this.shoeModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.screenHeight,
      width: SizeConfig.screenWidth,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            child: Container(
              height: SizeConfig.screenHeight * .75,
              width: SizeConfig.screenWidth,
              child: ClipPath(
                clipper: AppClipper(
                  cornerSize: 50,
                  diagonalHeight: 180,
                  roundedBottom: false,
                ),
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(top: 180, left: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 300,
                        child: Text(
                          "${shoeModel.name}",
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      RateBar(),
                      SizedBox(height: 24),
                      Text(
                        "DETAILS",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        "${shoeModel.desc}",
                        style: TextStyle(
                          color: Colors.black38,
                        ),
                      ),
                      SizedBox(height: 24),
                      Text(
                        "COLOR OPTIONS",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          ColorOption(kBlueColor),
                          ColorOption(kGreenColor),
                          ColorOption(kOrangeColor),
                          ColorOption(kRedColor),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          //bottom layout
          Positioned(
            bottom: 0,
            child: BottomLayout(shoeModel),
          ),
          //shoe image
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Hero(
              tag: "hero${shoeModel.imgPath}",
              child: Transform.rotate(
                angle: -math.pi / 7,
                child: Image(
                  width: MediaQuery.of(context).size.width * .85,
                  image: AssetImage("assets/${shoeModel.imgPath}"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
