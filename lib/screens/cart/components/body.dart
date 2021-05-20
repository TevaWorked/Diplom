import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_diplom/models/BuyProduct.dart';
import 'package:flutter_diplom/models/Product.dart';

import '../../../constants.dart';

class Body extends StatefulWidget {
  final BuyProduct product;
  int allPrice = 0;
  Body({Key key, this.product}) : super(key: key);

  @override
  _BodyState createState() => _BodyState(product);
}

class _BodyState extends State<Body> {
  final BuyProduct product;
  _BodyState(this.product);

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    print(product.products.length);
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: product.products.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: Key(product.products[index].id.toString()),
                  child: _buildItems(
                    product.products[index].name,
                    product.products[index].imageBG,
                    product.products[index].price,
                    product.products[index].amount,
                    width,
                  ),
                  onDismissed: (direction) {
                    setState(() {
                      product.products.removeAt(index);
                    });
                  },
                  background: Container(
                    color: Colors.red,
                    child: Icon(Icons.cancel),
                  ),
                );
              }),
        ),
        Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Row(
            children: [
              Expanded(
                child: FlatButton(
                  height: 50,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)),
                  color: Colors.blue,
                  child: Text(
                    "Заказать",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

Widget _buildItems(
    String name, String image, int price, int count, double width) {
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
                  width: width * 0.55,
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
                          price.toString() + "р. " + "X " + count.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
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
