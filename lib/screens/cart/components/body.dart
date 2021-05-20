import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_diplom/models/BuyProduct.dart';
import 'package:flutter_diplom/models/Product.dart';

import '../../../constants.dart';

class Body extends StatefulWidget {
  final BuyProduct product;
  Body({Key key, this.product}) : super(key: key);

  @override
  _BodyState createState() => _BodyState(product);
}

class _BodyState extends State<Body> {
  final BuyProduct product;
  _BodyState(this.product);
  Widget build(BuildContext context) {
    print(product.products.length);
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: product.products.length,
              itemBuilder: (context, index) => _buildItems(
                    product.products[index].name,
                    product.products[index].imageBG,
                    product.products[index].price,
                    product.products[index].amount,
                  )),
        ),
      ],
    );
  }
}

Widget _buildItems(String name, String image, int price, int count) {
  return Padding(
    padding: EdgeInsets.all(kDefaultPadding),
    child: InkWell(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.blue),
            child: Row(
              children: <Widget>[
                Hero(
                    tag: image,
                    child: Image(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                      height: 125,
                      width: 125,
                    )),
                SizedBox(width: 10.0),
                Container(
                  padding: EdgeInsets.all(kDefaultPadding),
                  width: 215,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        name,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Container(
                        padding: EdgeInsets.all(kDefaultPadding),
                        child: Text(
                          price.toString() + "Р. " + "X" + count.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Итог: " + (count * price).toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
