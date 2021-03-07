import 'package:flutter/material.dart';
import 'package:shoe_shop_app/models/shoe_model.dart';
import 'package:shoe_shop_app/screen/detail/components/app_bar.dart';
import 'package:shoe_shop_app/screen/detail/components/body.dart';

class DetailScreen extends StatelessWidget {
  final ShoeModel shoeModel;
  const DetailScreen({
    Key key,
    this.shoeModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: shoeModel.color,
      appBar: DetailAppBar(context, shoeModel.color),
      body: Body(
        shoeModel: shoeModel,
      ),
    );
  }
}
