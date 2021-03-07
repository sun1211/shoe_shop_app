import 'package:flutter/material.dart';
import 'package:shoe_shop_app/models/shoe_model.dart';

class ShoeBottomCard extends StatelessWidget {
  final ShoeModel data;
  const ShoeBottomCard({
    Key key,
    this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.of(context).push(
        // MaterialPageRoute(
        //   builder: (_) => DetailPage(
        //     data,
        //   ),
        // ),
        // );
      },
      child: Container(
        margin: EdgeInsets.only(left: 16, right: 16, bottom: 10),
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 1,
              blurRadius: 10,
            ),
          ],
        ),
        child: Row(
          children: <Widget>[
            Image(
              image: AssetImage("assets/${data.imgPath}"),
              width: 100,
              height: 60,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * .4,
                    child: Text(
                      "${data.name}",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    "${data.brand}",
                    style: TextStyle(
                      color: Colors.black26,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "\$${data.price.toInt()}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
