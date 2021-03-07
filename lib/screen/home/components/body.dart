import 'package:flutter/material.dart';
import 'package:shoe_shop_app/constants.dart';
import 'package:shoe_shop_app/models/shoe_model.dart';

import 'shoe_bottom_card.dart';
import 'shoe_card.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ShoeModel> shoeList = ShoeModel.list;
    return ListView(
      children: <Widget>[
        //header
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Categories",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
            ],
          ),
        ),
        //list shoe card
        Container(
          height: 300,
          margin: EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            itemCount: shoeList.length,
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 16),
            itemBuilder: (context, index) {
              return ShoeCard(
                shoeList: shoeList[index],
              );
            },
          ),
        ),
        SizedBox(height: 16),
        //header
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "JUST FOR YOU",
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "VIEW ALL",
                style: TextStyle(
                  color: kGreenColor,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        //bottom list shoe
        SizedBox(height: 24),
        ...shoeList.map((data) {
          return ShoeBottomCard(
            data: data,
          );
        }),
      ],
    );
  }
}
