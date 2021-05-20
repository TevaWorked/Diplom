import 'package:flutter/material.dart';
import 'package:flutter_diplom/constants.dart';
import 'package:flutter_diplom/models/BuyProduct.dart';
import 'package:flutter_diplom/models/Product.dart';

// ignore: must_be_immutable
class CartCounter extends StatefulWidget {
  final Product product;
  final BuyProduct buyProduct;
  CartCounter({Key key, this.product, this.buyProduct}) : super(key: key);

  @override
  _CartCounterState createState() => _CartCounterState(product, buyProduct);
}

class _CartCounterState extends State<CartCounter> {
  final Product product;
  final BuyProduct buyProduct;
  int numOfItem = 1;

  _CartCounterState(this.product, this.buyProduct);
  @override
  Widget build(BuildContext context) {
    setState(() {
      buyProduct.addAmount(product, numOfItem);
    });
    return Container(
      child: Row(
        children: <Widget>[
          buildOutLineButton(
            icon: Icons.remove,
            press: () {
              setState(() {
                numOfItem = numOfItem > 1 ? numOfItem -= 1 : 1;
                buyProduct.addAmount(product, numOfItem);
              });
            },
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
            child: Text(
              numOfItem.toString().padLeft(2, "0"),
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          buildOutLineButton(
            icon: Icons.add,
            press: () {
              setState(() {
                numOfItem += 1;
                buyProduct.addAmount(product, numOfItem);
                print(product.amount);
              });
            },
          )
        ],
      ),
    );
  }
}

SizedBox buildOutLineButton({IconData icon, Function press}) {
  return SizedBox(
    width: 40,
    height: 32,
    child: OutlineButton(
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(13),
      ),
      onPressed: press,
      child: Icon(icon),
    ),
  );
}
